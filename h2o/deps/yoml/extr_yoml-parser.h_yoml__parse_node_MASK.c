#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {void* scalar; void* alias; } ;
struct TYPE_24__ {TYPE_4__ data; } ;
typedef  TYPE_5__ yoml_t ;
struct TYPE_25__ {int /*<<< orphan*/  (* mem_set ) (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ;int /*<<< orphan*/  filename; } ;
typedef  TYPE_6__ yoml_parse_args_t ;
typedef  int /*<<< orphan*/  yaml_parser_t ;
typedef  int yaml_event_type_t ;
struct TYPE_21__ {int /*<<< orphan*/  value; int /*<<< orphan*/ * tag; int /*<<< orphan*/ * anchor; } ;
struct TYPE_20__ {int /*<<< orphan*/  anchor; } ;
struct TYPE_22__ {TYPE_2__ scalar; TYPE_1__ alias; } ;
struct TYPE_26__ {int type; TYPE_3__ data; } ;
typedef  TYPE_7__ yaml_event_t ;

/* Variables and functions */
#define  YAML_ALIAS_EVENT 131 
 int YAML_DOCUMENT_START_EVENT ; 
#define  YAML_MAPPING_START_EVENT 130 
 int YAML_NO_EVENT ; 
#define  YAML_SCALAR_EVENT 129 
#define  YAML_SEQUENCE_START_EVENT 128 
 int YAML_STREAM_START_EVENT ; 
 int /*<<< orphan*/  YOML_TYPE_SCALAR ; 
 int /*<<< orphan*/  YOML__TYPE_UNRESOLVED_ALIAS ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_7__*) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ *,TYPE_7__*,TYPE_6__*) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ *,TYPE_7__*,TYPE_6__*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static yoml_t *FUNC8(yaml_parser_t *parser, yaml_event_type_t *unhandled, yoml_parse_args_t *parse_args)
{
    yoml_t *node;
    yaml_event_t event;

    if (unhandled != NULL)
        *unhandled = YAML_NO_EVENT;

    /* wait for a node that is not a stream/doc start event */
    while (1) {
        if (!FUNC3(parser, &event))
            return NULL;
        if (!(event.type == YAML_STREAM_START_EVENT || event.type == YAML_DOCUMENT_START_EVENT))
            break;
        FUNC2(&event);
    }

    switch (event.type) {
    case YAML_ALIAS_EVENT:
        node = FUNC4(parse_args->filename, YOML__TYPE_UNRESOLVED_ALIAS, sizeof(*node), NULL, NULL, &event);
        node->data.alias = FUNC7(event.data.alias.anchor);
        break;
    case YAML_SCALAR_EVENT:
        node = FUNC4(parse_args->filename, YOML_TYPE_SCALAR, sizeof(*node), event.data.scalar.anchor, event.data.scalar.tag, &event);
        node->data.scalar = FUNC7(event.data.scalar.value);
        if (parse_args->mem_set != NULL)
            parse_args->mem_set(event.data.scalar.value, 'A', FUNC0(node->data.scalar));
        break;
    case YAML_SEQUENCE_START_EVENT:
        node = FUNC6(parser, &event, parse_args);
        break;
    case YAML_MAPPING_START_EVENT:
        node = FUNC5(parser, &event, parse_args);
        break;
    default:
        node = NULL;
        if (unhandled != NULL)
            *unhandled = event.type;
        break;
    }

    FUNC2(&event);

    return node;
}