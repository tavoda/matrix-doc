---
type: "object"
description: "Informs the client of tags on a room."
x-title: "Tag Event"
x-discriminator-value: m.tag
allOf:
- $ref: "core-event-schema/event.yaml"
- type: object
  properties:
    content:
      type: "object"
      properties:
        tags:
          type: "object"
          description: "The tags on the room and their contents."
          additionalProperties:
            title: "Tag"
            type: "object"
required:
- "type"
- "content"
