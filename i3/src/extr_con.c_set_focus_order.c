
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ type; int focus_head; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_WORKSPACE ;
 int TAILQ_EMPTY (int *) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 scalar_t__ con_inside_floating (TYPE_1__*) ;
 int focused ;

void set_focus_order(Con *con, Con **focus_order) {
    int focus_heads = 0;
    while (!TAILQ_EMPTY(&(con->focus_head))) {
        Con *current = TAILQ_FIRST(&(con->focus_head));

        TAILQ_REMOVE(&(con->focus_head), current, focused);
        focus_heads++;
    }

    for (int idx = 0; idx < focus_heads; idx++) {

        if (con->type != CT_WORKSPACE && con_inside_floating(focus_order[idx])) {
            focus_heads++;
            continue;
        }

        TAILQ_INSERT_TAIL(&(con->focus_head), focus_order[idx], focused);
    }
}
