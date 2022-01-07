
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


typedef int direction_t ;
struct TYPE_16__ {scalar_t__ type; scalar_t__ fullscreen_mode; int floating_head; struct TYPE_16__* parent; int rect; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CF_NONE ;
 scalar_t__ CT_FLOATING_CON ;
 scalar_t__ CT_WORKSPACE ;
 int TAILQ_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 TYPE_1__* TAILQ_LAST (int *,int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int con_activate (TYPE_1__*) ;
 TYPE_1__* con_descend_focused (TYPE_1__*) ;
 TYPE_1__* con_descend_tiling_focused (TYPE_1__*) ;
 TYPE_1__* con_get_workspace (TYPE_1__*) ;
 int floating_head ;
 int floating_windows ;
 TYPE_1__* get_tree_next (TYPE_1__*,int ) ;
 int workspace_show (TYPE_1__*) ;
 int x_set_warp_to (int *) ;

void tree_next(Con *con, direction_t direction) {
    Con *next = get_tree_next(con, direction);
    if (!next) {
        return;
    }
    if (next->type == CT_WORKSPACE) {



        Con *focus = con_descend_focused(next);
        if (focus->fullscreen_mode == CF_NONE) {
            Con *focus_tiling = con_descend_tiling_focused(next);


            if (focus_tiling != next) {
                focus = focus_tiling;
            }
        }

        workspace_show(next);
        con_activate(focus);
        x_set_warp_to(&(focus->rect));
        return;
    } else if (next->type == CT_FLOATING_CON) {


        Con *parent = next->parent;
        while (TAILQ_LAST(&(parent->floating_head), floating_head) != next) {
            Con *last = TAILQ_LAST(&(parent->floating_head), floating_head);
            TAILQ_REMOVE(&(parent->floating_head), last, floating_windows);
            TAILQ_INSERT_HEAD(&(parent->floating_head), last, floating_windows);
        }
    }

    workspace_show(con_get_workspace(next));
    con_activate(con_descend_focused(next));
}
