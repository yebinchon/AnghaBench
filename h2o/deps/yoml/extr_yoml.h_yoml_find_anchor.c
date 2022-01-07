
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {size_t size; TYPE_2__* elements; } ;
struct TYPE_8__ {size_t size; TYPE_5__** elements; } ;
struct TYPE_11__ {TYPE_3__ mapping; TYPE_1__ sequence; } ;
struct TYPE_12__ {int type; TYPE_4__ data; int * anchor; } ;
typedef TYPE_5__ yoml_t ;
struct TYPE_9__ {TYPE_5__* value; TYPE_5__* key; } ;




 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static inline yoml_t *yoml_find_anchor(yoml_t *node, const char *name)
{
    yoml_t *n;
    size_t i;

    if (node->anchor != ((void*)0) && strcmp(node->anchor, name) == 0)
        return node;

    switch (node->type) {
    case 128:
        for (i = 0; i != node->data.sequence.size; ++i)
            if ((n = yoml_find_anchor(node->data.sequence.elements[i], name)) != ((void*)0))
                return n;
        break;
    case 129:
        for (i = 0; i != node->data.mapping.size; ++i)
            if ((n = yoml_find_anchor(node->data.mapping.elements[i].key, name)) != ((void*)0) ||
                (n = yoml_find_anchor(node->data.mapping.elements[i].value, name)) != ((void*)0))
                return n;
        break;
    default:
        break;
    }

    return ((void*)0);
}
