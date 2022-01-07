
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; TYPE_1__* parent; } ;
struct TYPE_6__ {int focus_head; int nodes_head; int floating_head; } ;
typedef TYPE_2__ Con ;


 scalar_t__ CT_FLOATING_CON ;
 int TAILQ_REMOVE (int *,TYPE_2__*,int ) ;
 int con_force_split_parents_redraw (TYPE_2__*) ;
 int floating_windows ;
 int focused ;
 int nodes ;

void con_detach(Con *con) {
    con_force_split_parents_redraw(con);
    if (con->type == CT_FLOATING_CON) {
        TAILQ_REMOVE(&(con->parent->floating_head), con, floating_windows);
        TAILQ_REMOVE(&(con->parent->focus_head), con, focused);
    } else {
        TAILQ_REMOVE(&(con->parent->nodes_head), con, nodes);
        TAILQ_REMOVE(&(con->parent->focus_head), con, focused);
    }
}
