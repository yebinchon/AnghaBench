
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ type; struct TYPE_12__* parent; int focus_head; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_DOCKAREA ;
 scalar_t__ CT_FLOATING_CON ;
 int DLOG (char*,...) ;
 int TAILQ_EMPTY (int *) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 TYPE_1__* con_descend_focused (TYPE_1__*) ;
 scalar_t__ con_is_floating (TYPE_1__*) ;
 int focused ;
 TYPE_1__* output_get_content (TYPE_1__*) ;

Con *con_next_focused(Con *con) {

    if (con->parent->type == CT_DOCKAREA) {
        DLOG("selecting workspace for dock client\n");
        return con_descend_focused(output_get_content(con->parent->parent));
    }
    if (con_is_floating(con)) {
        con = con->parent;
    }



    Con *next = TAILQ_FIRST(&(con->parent->focus_head));
    if (next != con) {
        DLOG("Using first entry %p\n", next);
    } else {


        if (!(next = TAILQ_NEXT(con, focused))) {
            next = con->parent;
        }
    }



    while (!TAILQ_EMPTY(&(next->focus_head)) && TAILQ_FIRST(&(next->focus_head)) != con) {
        next = TAILQ_FIRST(&(next->focus_head));
    }

    if (con->type == CT_FLOATING_CON && next != con->parent) {
        next = con_descend_focused(next);
    }

    return next;
}
