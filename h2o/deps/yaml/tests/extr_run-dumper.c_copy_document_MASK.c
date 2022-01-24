#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_9__ ;
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_11__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
struct TYPE_27__ {TYPE_10__* top; TYPE_10__* start; } ;
struct TYPE_28__ {TYPE_5__ pairs; int /*<<< orphan*/  style; } ;
struct TYPE_25__ {int /*<<< orphan*/ * top; int /*<<< orphan*/ * start; } ;
struct TYPE_26__ {TYPE_3__ items; int /*<<< orphan*/  style; } ;
struct TYPE_24__ {int /*<<< orphan*/  style; int /*<<< orphan*/  length; int /*<<< orphan*/  value; } ;
struct TYPE_29__ {TYPE_6__ mapping; TYPE_4__ sequence; TYPE_2__ scalar; } ;
struct TYPE_31__ {int type; TYPE_7__ data; int /*<<< orphan*/  tag; } ;
typedef  TYPE_9__ yaml_node_t ;
struct TYPE_21__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
typedef  TYPE_10__ yaml_node_pair_t ;
typedef  int /*<<< orphan*/  yaml_node_item_t ;
struct TYPE_30__ {TYPE_9__* start; TYPE_9__* top; } ;
struct TYPE_23__ {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct TYPE_22__ {TYPE_8__ nodes; int /*<<< orphan*/  end_implicit; int /*<<< orphan*/  start_implicit; TYPE_1__ tag_directives; int /*<<< orphan*/  version_directive; } ;
typedef  TYPE_11__ yaml_document_t ;

/* Variables and functions */
#define  YAML_MAPPING_NODE 130 
#define  YAML_SCALAR_NODE 129 
#define  YAML_SEQUENCE_NODE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(yaml_document_t *document_to, yaml_document_t *document_from)
{
    yaml_node_t *node;
    yaml_node_item_t *item;
    yaml_node_pair_t *pair;

    if (!FUNC7(document_to, document_from->version_directive,
                document_from->tag_directives.start,
                document_from->tag_directives.end,
                document_from->start_implicit, document_from->end_implicit))
        return 0;

    for (node = document_from->nodes.start;
            node < document_from->nodes.top; node ++) {
        switch (node->type) {
            case YAML_SCALAR_NODE:
                if (!FUNC2(document_to, node->tag,
                            node->data.scalar.value, node->data.scalar.length,
                            node->data.scalar.style)) goto error;
                break;
            case YAML_SEQUENCE_NODE:
                if (!FUNC3(document_to, node->tag,
                            node->data.sequence.style)) goto error;
                break;
            case YAML_MAPPING_NODE:
                if (!FUNC1(document_to, node->tag,
                            node->data.mapping.style)) goto error;
                break;
            default:
                FUNC0(0);
                break;
        }
    }

    for (node = document_from->nodes.start;
            node < document_from->nodes.top; node ++) {
        switch (node->type) {
            case YAML_SEQUENCE_NODE:
                for (item = node->data.sequence.items.start;
                        item < node->data.sequence.items.top; item ++) {
                    if (!FUNC5(document_to,
                                node - document_from->nodes.start + 1,
                                *item)) goto error;
                }
                break;
            case YAML_MAPPING_NODE:
                for (pair = node->data.mapping.pairs.start;
                        pair < node->data.mapping.pairs.top; pair ++) {
                    if (!FUNC4(document_to,
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
    FUNC6(document_to);
    return 0;
}