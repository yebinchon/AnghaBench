
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ylength ;
typedef int yajl_gen ;
struct TYPE_13__ {scalar_t__ type; int urgent; int name; int focus_head; TYPE_1__* parent; } ;
struct TYPE_12__ {scalar_t__ type; } ;
typedef TYPE_2__ Con ;


 scalar_t__ CT_DOCKAREA ;
 scalar_t__ CT_OUTPUT ;
 scalar_t__ CT_ROOT ;
 scalar_t__ CT_WORKSPACE ;
 int DLOG (char*,...) ;
 int DONT_KILL_WINDOW ;
 int I3_IPC_EVENT_WORKSPACE ;
 int LOG (char*,TYPE_2__*,int ) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int con_force_split_parents_redraw (TYPE_2__*) ;
 int con_has_urgent_child (TYPE_2__*) ;
 int con_num_children (TYPE_2__*) ;
 int con_update_parents_urgency (TYPE_2__*) ;
 int free ;
 int get_buf ;
 int ipc_marshal_workspace_event (char*,TYPE_2__*,int *) ;
 int ipc_send_event (char*,int ,char const*) ;
 int tree_close_internal (TYPE_2__*,int ,int) ;
 int workspace_is_visible (TYPE_2__*) ;
 int y (int ,...) ;

__attribute__((used)) static void con_on_remove_child(Con *con) {
    DLOG("on_remove_child\n");



    if (con->type == CT_OUTPUT ||
        con->type == CT_ROOT ||
        con->type == CT_DOCKAREA ||
        (con->parent != ((void*)0) && con->parent->type == CT_OUTPUT)) {
        DLOG("not handling, type = %d, name = %s\n", con->type, con->name);
        return;
    }


    if (con->type == CT_WORKSPACE) {
        if (TAILQ_EMPTY(&(con->focus_head)) && !workspace_is_visible(con)) {
            LOG("Closing old workspace (%p / %s), it is empty\n", con, con->name);
            yajl_gen gen = ipc_marshal_workspace_event("empty", con, ((void*)0));
            tree_close_internal(con, DONT_KILL_WINDOW, 0);

            const unsigned char *payload;
            ylength length;
            y(get_buf, &payload, &length);
            ipc_send_event("workspace", I3_IPC_EVENT_WORKSPACE, (const char *)payload);

            y(free);
        }
        return;
    }

    con_force_split_parents_redraw(con);
    con->urgent = con_has_urgent_child(con);
    con_update_parents_urgency(con);



    int children = con_num_children(con);
    if (children == 0) {
        DLOG("Container empty, closing\n");
        tree_close_internal(con, DONT_KILL_WINDOW, 0);
        return;
    }
}
