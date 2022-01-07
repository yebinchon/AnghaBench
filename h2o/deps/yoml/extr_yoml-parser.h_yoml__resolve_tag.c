
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {size_t size; TYPE_4__* elements; } ;
struct TYPE_18__ {size_t size; int elements; } ;
struct TYPE_21__ {TYPE_5__ mapping; TYPE_3__ sequence; } ;
struct TYPE_22__ {int type; TYPE_6__ data; int column; int line; int * tag; } ;
typedef TYPE_7__ yoml_t ;
struct TYPE_16__ {int cb_arg; TYPE_7__* (* cb ) (int *,TYPE_7__*,int ) ;} ;
struct TYPE_23__ {int mem_set; TYPE_1__ resolve_tag; } ;
typedef TYPE_8__ yoml_parse_args_t ;
struct TYPE_17__ {int column; int line; } ;
struct TYPE_24__ {char* problem; TYPE_2__ problem_mark; } ;
typedef TYPE_9__ yaml_parser_t ;
struct TYPE_19__ {TYPE_7__* value; TYPE_7__* key; } ;






 TYPE_7__* stub1 (int *,TYPE_7__*,int ) ;
 int yoml_free (TYPE_7__*,int ) ;

__attribute__((used)) static inline int yoml__resolve_tag(yoml_t **target, yaml_parser_t *parser, yoml_parse_args_t *parse_args)
{
    size_t i;

    if (parse_args->resolve_tag.cb == ((void*)0))
        return 0;

    if ((*target)->tag != ((void*)0)) {
        yoml_t *resolved = parse_args->resolve_tag.cb((*target)->tag, *target, parse_args->resolve_tag.cb_arg);
        if (resolved == ((void*)0)) {
            if (parser != ((void*)0)) {
                parser->problem = "tag resolution failed";
                parser->problem_mark.line = (*target)->line;
                parser->problem_mark.column = (*target)->column;
            }
            return -1;
        }
        yoml_free(*target, parse_args->mem_set);
        *target = resolved;
    }

    switch ((*target)->type) {
        case 130:
            break;
        case 129:
            for (i = 0; i != (*target)->data.sequence.size; ++i) {
                if (yoml__resolve_tag((*target)->data.sequence.elements + i, parser, parse_args) != 0)
                    return -1;
            }
            break;
        case 131:
            for (i = 0; i != (*target)->data.mapping.size; ++i) {
                if (yoml__resolve_tag(&(*target)->data.mapping.elements[i].key, parser, parse_args) != 0)
                    return -1;
                if (yoml__resolve_tag(&(*target)->data.mapping.elements[i].value, parser, parse_args) != 0)
                    return -1;
            }
            break;
        case 128:
            break;
    }

    return 0;
}
