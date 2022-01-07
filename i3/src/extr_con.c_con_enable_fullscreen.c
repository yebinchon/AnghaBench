
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int fullscreen_mode_t ;
struct TYPE_13__ {scalar_t__ type; int name; int fullscreen_mode; } ;
typedef TYPE_1__ Con ;


 int CF_GLOBAL ;
 int CF_OUTPUT ;
 scalar_t__ CT_WORKSPACE ;
 int DLOG (char*,...) ;
 int assert (int) ;
 int con_activate (TYPE_1__*) ;
 int con_disable_fullscreen (TYPE_1__*) ;
 TYPE_1__* con_get_fullscreen_con (TYPE_1__*,int ) ;
 TYPE_1__* con_get_workspace (TYPE_1__*) ;
 int con_set_fullscreen_mode (TYPE_1__*,int ) ;
 TYPE_1__* croot ;
 TYPE_1__* focused ;
 int workspace_show (TYPE_1__*) ;

void con_enable_fullscreen(Con *con, fullscreen_mode_t fullscreen_mode) {
    if (con->type == CT_WORKSPACE) {
        DLOG("You cannot make a workspace fullscreen.\n");
        return;
    }

    assert(fullscreen_mode == CF_GLOBAL || fullscreen_mode == CF_OUTPUT);

    if (fullscreen_mode == CF_GLOBAL)
        DLOG("enabling global fullscreen for %p / %s\n", con, con->name);
    else
        DLOG("enabling fullscreen for %p / %s\n", con, con->name);

    if (con->fullscreen_mode == fullscreen_mode) {
        DLOG("fullscreen already enabled for %p / %s\n", con, con->name);
        return;
    }

    Con *con_ws = con_get_workspace(con);


    Con *fullscreen = con_get_fullscreen_con(croot, CF_GLOBAL);
    if (fullscreen == ((void*)0))
        fullscreen = con_get_fullscreen_con(con_ws, CF_OUTPUT);
    if (fullscreen != ((void*)0))
        con_disable_fullscreen(fullscreen);




    Con *cur_ws = con_get_workspace(focused);
    Con *old_focused = focused;
    if (fullscreen_mode == CF_GLOBAL && cur_ws != con_ws)
        workspace_show(con_ws);
    con_activate(con);
    if (fullscreen_mode != CF_GLOBAL && cur_ws != con_ws)
        con_activate(old_focused);

    con_set_fullscreen_mode(con, fullscreen_mode);
}
