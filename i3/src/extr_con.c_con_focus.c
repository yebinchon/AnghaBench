
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ urgent; struct TYPE_14__* parent; int focus_head; } ;
typedef TYPE_1__ Con ;


 int DLOG (char*,TYPE_1__*) ;
 int TAILQ_INSERT_HEAD (int *,TYPE_1__*,TYPE_1__*) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,TYPE_1__*) ;
 int assert (int ) ;
 int con_get_workspace (TYPE_1__*) ;
 scalar_t__ con_is_leaf (TYPE_1__*) ;
 int con_set_urgency (TYPE_1__*,int) ;
 int con_update_parents_urgency (TYPE_1__*) ;
 TYPE_1__* focused ;
 int ipc_send_window_event (char*,TYPE_1__*) ;
 int workspace_update_urgent_flag (int ) ;

void con_focus(Con *con) {
    assert(con != ((void*)0));
    DLOG("con_focus = %p\n", con);



    TAILQ_REMOVE(&(con->parent->focus_head), con, focused);
    TAILQ_INSERT_HEAD(&(con->parent->focus_head), con, focused);
    if (con->parent->parent != ((void*)0))
        con_focus(con->parent);

    focused = con;





    if (con->urgent && con_is_leaf(con)) {
        con_set_urgency(con, 0);
        con_update_parents_urgency(con);
        workspace_update_urgent_flag(con_get_workspace(con));
        ipc_send_window_event("urgent", con);
    }
}
