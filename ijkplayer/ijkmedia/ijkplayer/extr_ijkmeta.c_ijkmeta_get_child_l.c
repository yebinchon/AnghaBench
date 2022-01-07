
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t children_count; struct TYPE_4__** children; } ;
typedef TYPE_1__ IjkMediaMeta ;



IjkMediaMeta *ijkmeta_get_child_l(IjkMediaMeta *meta, size_t index)
{
    if (!meta)
        return ((void*)0);

    if (index >= meta->children_count)
        return ((void*)0);

    return meta->children[index];
}
