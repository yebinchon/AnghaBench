
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ type; double percent; int floating; struct TYPE_18__* parent; } ;
typedef TYPE_1__ Con ;


 int AFTER ;
 scalar_t__ CT_WORKSPACE ;
 int DONT_KILL_WINDOW ;
 int FLOATING_USER_OFF ;
 int LOG (char*) ;
 int con_attach (TYPE_1__*,TYPE_1__*,int) ;
 TYPE_1__* con_descend_tiling_focused (TYPE_1__*) ;
 int con_detach (TYPE_1__*) ;
 int con_fix_percent (TYPE_1__*) ;
 TYPE_1__* con_get_workspace (TYPE_1__*) ;
 int con_is_floating (TYPE_1__*) ;
 scalar_t__ con_is_internal (TYPE_1__*) ;
 int floating_set_hint_atom (TYPE_1__*,int) ;
 int insert_con_into (TYPE_1__*,TYPE_1__*,int ) ;
 int ipc_send_window_event (char*,TYPE_1__*) ;
 int tree_close_internal (TYPE_1__*,int ,int) ;

void floating_disable(Con *con) {
    if (!con_is_floating(con)) {
        LOG("Container isn't floating, not doing anything.\n");
        return;
    }

    Con *ws = con_get_workspace(con);
    if (con_is_internal(ws)) {
        LOG("Can't disable floating for container in internal workspace.\n");
        return;
    }
    Con *tiling_focused = con_descend_tiling_focused(ws);

    if (tiling_focused->type == CT_WORKSPACE) {
        Con *parent = con->parent;
        con_detach(con);
        con->parent = ((void*)0);
        tree_close_internal(parent, DONT_KILL_WINDOW, 1);
        con_attach(con, tiling_focused, 0);
        con->percent = 0.0;
        con_fix_percent(con->parent);
    } else {
        insert_con_into(con, tiling_focused, AFTER);
    }

    con->floating = FLOATING_USER_OFF;
    floating_set_hint_atom(con, 0);
    ipc_send_window_event("floating", con);
}
