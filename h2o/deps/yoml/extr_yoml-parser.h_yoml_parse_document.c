
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int yoml_t ;
struct TYPE_7__ {int mem_set; } ;
typedef TYPE_1__ yoml_parse_args_t ;
typedef int yaml_parser_t ;
typedef int yaml_event_type_t ;


 int YAML_NO_EVENT ;
 int * yoml__parse_node (int *,int *,TYPE_1__*) ;
 scalar_t__ yoml__resolve_alias (int **,int *,int *,TYPE_1__*) ;
 scalar_t__ yoml__resolve_merge (int **,int *,TYPE_1__*) ;
 scalar_t__ yoml__resolve_tag (int **,int *,TYPE_1__*) ;
 int yoml_free (int *,int ) ;

__attribute__((used)) static inline yoml_t *yoml_parse_document(yaml_parser_t *parser, yaml_event_type_t *unhandled, yoml_parse_args_t *parse_args)
{
    yoml_t *doc;


    if ((doc = yoml__parse_node(parser, unhandled, parse_args)) == ((void*)0)) {
        return ((void*)0);
    }
    if (unhandled != ((void*)0))
        *unhandled = YAML_NO_EVENT;


    if (yoml__resolve_tag(&doc, parser, parse_args) != 0)
        goto Error;
    if (yoml__resolve_alias(&doc, doc, parser, parse_args) != 0)
        goto Error;
    if (yoml__resolve_merge(&doc, parser, parse_args) != 0)
        goto Error;

    return doc;

Error:
    yoml_free(doc, parse_args->mem_set);
    return ((void*)0);
}
