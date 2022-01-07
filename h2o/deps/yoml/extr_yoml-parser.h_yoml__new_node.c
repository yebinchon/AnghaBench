
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ yoml_type_t ;
struct TYPE_12__ {int _refcnt; int * tag; int * anchor; int column; int line; scalar_t__ type; int * filename; } ;
typedef TYPE_4__ yoml_t ;
struct TYPE_11__ {int column; int line; } ;
struct TYPE_9__ {int style; } ;
struct TYPE_10__ {TYPE_1__ scalar; } ;
struct TYPE_13__ {TYPE_3__ start_mark; TYPE_2__ data; } ;
typedef TYPE_5__ yaml_event_t ;
typedef int yaml_char_t ;




 scalar_t__ YOML_TYPE_SCALAR ;
 TYPE_4__* malloc (size_t) ;
 int * strdup (char const*) ;
 int * yoml__strdup (int *) ;

__attribute__((used)) static inline yoml_t *yoml__new_node(const char *filename, yoml_type_t type, size_t sz, yaml_char_t *anchor, yaml_char_t *tag, yaml_event_t *event)
{
    yoml_t *node = malloc(sz);
    node->filename = filename != ((void*)0) ? strdup(filename) : ((void*)0);
    node->type = type;
    node->line = event->start_mark.line;
    if (type == YOML_TYPE_SCALAR) {
        switch (event->data.scalar.style) {
        case 128:
        case 129:
            ++node->line;
            break;
        default:
            break;
        }
    }
    node->column = event->start_mark.column;
    node->anchor = anchor != ((void*)0) ? yoml__strdup(anchor) : ((void*)0);
    node->tag = tag != ((void*)0) ? yoml__strdup(tag) : ((void*)0);
    node->_refcnt = 1;
    return node;
}
