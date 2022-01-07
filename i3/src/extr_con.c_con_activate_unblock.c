
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Con ;


 int con_activate (int *) ;
 int con_disable_fullscreen (int *) ;
 int * con_get_fullscreen_covering_ws (int *) ;
 int * con_get_workspace (int *) ;
 int con_has_parent (int *,int *) ;
 int * focused ;
 int workspace_show (int *) ;

void con_activate_unblock(Con *con) {
    Con *ws = con_get_workspace(con);
    Con *previous_focus = focused;
    Con *fullscreen_on_ws = con_get_fullscreen_covering_ws(ws);

    if (fullscreen_on_ws && fullscreen_on_ws != con && !con_has_parent(con, fullscreen_on_ws)) {
        con_disable_fullscreen(fullscreen_on_ws);
    }

    con_activate(con);
    if (ws != con_get_workspace(previous_focus)) {
        con_activate(previous_focus);

        workspace_show(ws);
        con_activate(con);
    }
}
