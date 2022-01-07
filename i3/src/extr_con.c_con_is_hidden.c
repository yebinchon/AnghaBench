
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; scalar_t__ layout; int focus_head; struct TYPE_4__* parent; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_WORKSPACE ;
 scalar_t__ L_STACKED ;
 scalar_t__ L_TABBED ;
 TYPE_1__* TAILQ_FIRST (int *) ;

bool con_is_hidden(Con *con) {
    Con *current = con;



    while (current != ((void*)0) && current->type != CT_WORKSPACE) {
        Con *parent = current->parent;
        if (parent != ((void*)0) && (parent->layout == L_TABBED || parent->layout == L_STACKED)) {
            if (TAILQ_FIRST(&(parent->focus_head)) != current)
                return 1;
        }

        current = parent;
    }

    return 0;
}
