
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {size_t size; TYPE_5__** elements; } ;
struct TYPE_15__ {size_t size; TYPE_7__* elements; } ;
struct TYPE_17__ {TYPE_2__ sequence; TYPE_1__ mapping; int scalar; } ;
struct TYPE_19__ {int type; int column; int line; TYPE_3__ data; } ;
typedef TYPE_5__ yoml_t ;
struct TYPE_20__ {int mem_set; } ;
typedef TYPE_6__ yoml_parse_args_t ;
struct TYPE_21__ {TYPE_5__* value; TYPE_5__* key; } ;
typedef TYPE_7__ yoml_mapping_element_t ;
struct TYPE_18__ {int column; int line; } ;
struct TYPE_22__ {char* problem; TYPE_4__ problem_mark; } ;
typedef TYPE_8__ yaml_parser_t ;






 int assert (int) ;
 int memmove (int ,int ,int) ;
 int strcmp (int ,char*) ;
 int yoml__merge (TYPE_5__**,size_t,TYPE_5__*) ;
 int yoml_free (TYPE_5__*,int ) ;

__attribute__((used)) static inline int yoml__resolve_merge(yoml_t **target, yaml_parser_t *parser, yoml_parse_args_t *parse_args)
{
    size_t i, j;

    switch ((*target)->type) {
    case 130:
        break;
    case 129:
        for (i = 0; i != (*target)->data.sequence.size; ++i) {
            if (yoml__resolve_merge((*target)->data.sequence.elements + i, parser, parse_args) != 0)
                return -1;
        }
        break;
    case 131:
        if ((*target)->data.mapping.size != 0) {
            i = (*target)->data.mapping.size;
            do {
                --i;
                if (yoml__resolve_merge(&(*target)->data.mapping.elements[i].key, parser, parse_args) != 0)
                    return -1;
                if (yoml__resolve_merge(&(*target)->data.mapping.elements[i].value, parser, parse_args) != 0)
                    return -1;
                if ((*target)->data.mapping.elements[i].key->type == 130 &&
                    strcmp((*target)->data.mapping.elements[i].key->data.scalar, "<<") == 0) {

                    yoml_mapping_element_t src = (*target)->data.mapping.elements[i];
                    memmove((*target)->data.mapping.elements + i, (*target)->data.mapping.elements + i + 1,
                            ((*target)->data.mapping.size - i - 1) * sizeof((*target)->data.mapping.elements[0]));
                    --(*target)->data.mapping.size;

                    if (src.value->type == 129) {
                        for (j = 0; j != src.value->data.sequence.size; ++j)
                            if (yoml__merge(target, i, src.value->data.sequence.elements[j]) != 0) {
                            MergeError:
                                if (parser != ((void*)0)) {
                                    parser->problem = "value of the merge key MUST be a mapping or a sequence of mappings";
                                    parser->problem_mark.line = src.key->line;
                                    parser->problem_mark.column = src.key->column;
                                }
                                return -1;
                            }
                    } else {
                        if (yoml__merge(target, i, src.value) != 0)
                            goto MergeError;
                    }

                    yoml_free(src.key, parse_args->mem_set);
                    yoml_free(src.value, parse_args->mem_set);
                }
            } while (i != 0);
        }
        break;
    case 128:
        assert(!"unreachable");
        break;
    }

    return 0;
}
