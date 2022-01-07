
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_11__ ;
typedef struct TYPE_21__ TYPE_10__ ;


struct TYPE_27__ {TYPE_10__* top; TYPE_10__* start; } ;
struct TYPE_28__ {TYPE_5__ pairs; int style; } ;
struct TYPE_25__ {int * top; int * start; } ;
struct TYPE_26__ {TYPE_3__ items; int style; } ;
struct TYPE_24__ {int style; int length; int value; } ;
struct TYPE_29__ {TYPE_6__ mapping; TYPE_4__ sequence; TYPE_2__ scalar; } ;
struct TYPE_31__ {int type; TYPE_7__ data; int tag; } ;
typedef TYPE_9__ yaml_node_t ;
struct TYPE_21__ {int value; int key; } ;
typedef TYPE_10__ yaml_node_pair_t ;
typedef int yaml_node_item_t ;
struct TYPE_30__ {TYPE_9__* start; TYPE_9__* top; } ;
struct TYPE_23__ {int end; int start; } ;
struct TYPE_22__ {TYPE_8__ nodes; int end_implicit; int start_implicit; TYPE_1__ tag_directives; int version_directive; } ;
typedef TYPE_11__ yaml_document_t ;





 int assert (int ) ;
 int yaml_document_add_mapping (TYPE_11__*,int ,int ) ;
 int yaml_document_add_scalar (TYPE_11__*,int ,int ,int ,int ) ;
 int yaml_document_add_sequence (TYPE_11__*,int ,int ) ;
 int yaml_document_append_mapping_pair (TYPE_11__*,int ,int ,int ) ;
 int yaml_document_append_sequence_item (TYPE_11__*,int ,int ) ;
 int yaml_document_delete (TYPE_11__*) ;
 int yaml_document_initialize (TYPE_11__*,int ,int ,int ,int ,int ) ;

int copy_document(yaml_document_t *document_to, yaml_document_t *document_from)
{
    yaml_node_t *node;
    yaml_node_item_t *item;
    yaml_node_pair_t *pair;

    if (!yaml_document_initialize(document_to, document_from->version_directive,
                document_from->tag_directives.start,
                document_from->tag_directives.end,
                document_from->start_implicit, document_from->end_implicit))
        return 0;

    for (node = document_from->nodes.start;
            node < document_from->nodes.top; node ++) {
        switch (node->type) {
            case 129:
                if (!yaml_document_add_scalar(document_to, node->tag,
                            node->data.scalar.value, node->data.scalar.length,
                            node->data.scalar.style)) goto error;
                break;
            case 128:
                if (!yaml_document_add_sequence(document_to, node->tag,
                            node->data.sequence.style)) goto error;
                break;
            case 130:
                if (!yaml_document_add_mapping(document_to, node->tag,
                            node->data.mapping.style)) goto error;
                break;
            default:
                assert(0);
                break;
        }
    }

    for (node = document_from->nodes.start;
            node < document_from->nodes.top; node ++) {
        switch (node->type) {
            case 128:
                for (item = node->data.sequence.items.start;
                        item < node->data.sequence.items.top; item ++) {
                    if (!yaml_document_append_sequence_item(document_to,
                                node - document_from->nodes.start + 1,
                                *item)) goto error;
                }
                break;
            case 130:
                for (pair = node->data.mapping.pairs.start;
                        pair < node->data.mapping.pairs.top; pair ++) {
                    if (!yaml_document_append_mapping_pair(document_to,
                                node - document_from->nodes.start + 1,
                                pair->key, pair->value)) goto error;
                }
                break;
            default:
                break;
        }
    }
    return 1;

error:
    yaml_document_delete(document_to);
    return 0;
}
