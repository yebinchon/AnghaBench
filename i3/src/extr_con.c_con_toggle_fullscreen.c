
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; scalar_t__ fullscreen_mode; int name; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CF_NONE ;
 scalar_t__ CT_WORKSPACE ;
 int DLOG (char*,...) ;
 int con_disable_fullscreen (TYPE_1__*) ;
 int con_enable_fullscreen (TYPE_1__*,int) ;

void con_toggle_fullscreen(Con *con, int fullscreen_mode) {
    if (con->type == CT_WORKSPACE) {
        DLOG("You cannot make a workspace fullscreen.\n");
        return;
    }

    DLOG("toggling fullscreen for %p / %s\n", con, con->name);

    if (con->fullscreen_mode == CF_NONE)
        con_enable_fullscreen(con, fullscreen_mode);
    else
        con_disable_fullscreen(con);
}
