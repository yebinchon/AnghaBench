
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_10__ ;


struct TYPE_31__ {int style; int implicit; int tag; int anchor; } ;
struct TYPE_30__ {int style; int implicit; int tag; int anchor; } ;
struct TYPE_29__ {int style; int quoted_implicit; int plain_implicit; int length; int value; int tag; int anchor; } ;
struct TYPE_28__ {int anchor; } ;
struct TYPE_27__ {int implicit; } ;
struct TYPE_25__ {int end; int start; } ;
struct TYPE_26__ {int implicit; TYPE_2__ tag_directives; int version_directive; } ;
struct TYPE_24__ {int encoding; } ;
struct TYPE_32__ {TYPE_8__ mapping_start; TYPE_7__ sequence_start; TYPE_6__ scalar; TYPE_5__ alias; TYPE_4__ document_end; TYPE_3__ document_start; TYPE_1__ stream_start; } ;
struct TYPE_23__ {int type; TYPE_9__ data; } ;
typedef TYPE_10__ yaml_event_t ;
 int assert (int) ;
 int yaml_alias_event_initialize (TYPE_10__*,int ) ;
 int yaml_document_end_event_initialize (TYPE_10__*,int ) ;
 int yaml_document_start_event_initialize (TYPE_10__*,int ,int ,int ,int ) ;
 int yaml_mapping_end_event_initialize (TYPE_10__*) ;
 int yaml_mapping_start_event_initialize (TYPE_10__*,int ,int ,int ,int ) ;
 int yaml_scalar_event_initialize (TYPE_10__*,int ,int ,int ,int ,int ,int ,int ) ;
 int yaml_sequence_end_event_initialize (TYPE_10__*) ;
 int yaml_sequence_start_event_initialize (TYPE_10__*,int ,int ,int ,int ) ;
 int yaml_stream_end_event_initialize (TYPE_10__*) ;
 int yaml_stream_start_event_initialize (TYPE_10__*,int ) ;

int copy_event(yaml_event_t *event_to, yaml_event_t *event_from)
{
    switch (event_from->type)
    {
        case 128:
            return yaml_stream_start_event_initialize(event_to,
                    event_from->data.stream_start.encoding);

        case 129:
            return yaml_stream_end_event_initialize(event_to);

        case 135:
            return yaml_document_start_event_initialize(event_to,
                    event_from->data.document_start.version_directive,
                    event_from->data.document_start.tag_directives.start,
                    event_from->data.document_start.tag_directives.end,
                    event_from->data.document_start.implicit);

        case 136:
            return yaml_document_end_event_initialize(event_to,
                    event_from->data.document_end.implicit);

        case 137:
            return yaml_alias_event_initialize(event_to,
                    event_from->data.alias.anchor);

        case 132:
            return yaml_scalar_event_initialize(event_to,
                    event_from->data.scalar.anchor,
                    event_from->data.scalar.tag,
                    event_from->data.scalar.value,
                    event_from->data.scalar.length,
                    event_from->data.scalar.plain_implicit,
                    event_from->data.scalar.quoted_implicit,
                    event_from->data.scalar.style);

        case 130:
            return yaml_sequence_start_event_initialize(event_to,
                    event_from->data.sequence_start.anchor,
                    event_from->data.sequence_start.tag,
                    event_from->data.sequence_start.implicit,
                    event_from->data.sequence_start.style);

        case 131:
            return yaml_sequence_end_event_initialize(event_to);

        case 133:
            return yaml_mapping_start_event_initialize(event_to,
                    event_from->data.mapping_start.anchor,
                    event_from->data.mapping_start.tag,
                    event_from->data.mapping_start.implicit,
                    event_from->data.mapping_start.style);

        case 134:
            return yaml_mapping_end_event_initialize(event_to);

        default:
            assert(1);
    }

    return 0;
}
