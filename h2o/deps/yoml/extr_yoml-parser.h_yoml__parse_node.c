
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_23__ {void* scalar; void* alias; } ;
struct TYPE_24__ {TYPE_4__ data; } ;
typedef TYPE_5__ yoml_t ;
struct TYPE_25__ {int (* mem_set ) (int ,char,int ) ;int filename; } ;
typedef TYPE_6__ yoml_parse_args_t ;
typedef int yaml_parser_t ;
typedef int yaml_event_type_t ;
struct TYPE_21__ {int value; int * tag; int * anchor; } ;
struct TYPE_20__ {int anchor; } ;
struct TYPE_22__ {TYPE_2__ scalar; TYPE_1__ alias; } ;
struct TYPE_26__ {int type; TYPE_3__ data; } ;
typedef TYPE_7__ yaml_event_t ;



 int YAML_DOCUMENT_START_EVENT ;

 int YAML_NO_EVENT ;


 int YAML_STREAM_START_EVENT ;
 int YOML_TYPE_SCALAR ;
 int YOML__TYPE_UNRESOLVED_ALIAS ;
 int strlen (void*) ;
 int stub1 (int ,char,int ) ;
 int yaml_event_delete (TYPE_7__*) ;
 int yaml_parser_parse (int *,TYPE_7__*) ;
 TYPE_5__* yoml__new_node (int ,int ,int,int *,int *,TYPE_7__*) ;
 TYPE_5__* yoml__parse_mapping (int *,TYPE_7__*,TYPE_6__*) ;
 TYPE_5__* yoml__parse_sequence (int *,TYPE_7__*,TYPE_6__*) ;
 void* yoml__strdup (int ) ;

__attribute__((used)) static yoml_t *yoml__parse_node(yaml_parser_t *parser, yaml_event_type_t *unhandled, yoml_parse_args_t *parse_args)
{
    yoml_t *node;
    yaml_event_t event;

    if (unhandled != ((void*)0))
        *unhandled = YAML_NO_EVENT;


    while (1) {
        if (!yaml_parser_parse(parser, &event))
            return ((void*)0);
        if (!(event.type == YAML_STREAM_START_EVENT || event.type == YAML_DOCUMENT_START_EVENT))
            break;
        yaml_event_delete(&event);
    }

    switch (event.type) {
    case 131:
        node = yoml__new_node(parse_args->filename, YOML__TYPE_UNRESOLVED_ALIAS, sizeof(*node), ((void*)0), ((void*)0), &event);
        node->data.alias = yoml__strdup(event.data.alias.anchor);
        break;
    case 129:
        node = yoml__new_node(parse_args->filename, YOML_TYPE_SCALAR, sizeof(*node), event.data.scalar.anchor, event.data.scalar.tag, &event);
        node->data.scalar = yoml__strdup(event.data.scalar.value);
        if (parse_args->mem_set != ((void*)0))
            parse_args->mem_set(event.data.scalar.value, 'A', strlen(node->data.scalar));
        break;
    case 128:
        node = yoml__parse_sequence(parser, &event, parse_args);
        break;
    case 130:
        node = yoml__parse_mapping(parser, &event, parse_args);
        break;
    default:
        node = ((void*)0);
        if (unhandled != ((void*)0))
            *unhandled = event.type;
        break;
    }

    yaml_event_delete(&event);

    return node;
}
