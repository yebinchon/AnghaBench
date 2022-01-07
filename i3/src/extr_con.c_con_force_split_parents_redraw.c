
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; struct TYPE_4__* parent; int deco_render_params; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_DOCKAREA ;
 scalar_t__ CT_WORKSPACE ;
 int FREE (int ) ;
 int con_is_leaf (TYPE_1__*) ;

void con_force_split_parents_redraw(Con *con) {
    Con *parent = con;

    while (parent != ((void*)0) && parent->type != CT_WORKSPACE && parent->type != CT_DOCKAREA) {
        if (!con_is_leaf(parent)) {
            FREE(parent->deco_render_params);
        }

        parent = parent->parent;
    }
}
