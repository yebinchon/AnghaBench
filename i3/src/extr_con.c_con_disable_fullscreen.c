
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; scalar_t__ fullscreen_mode; int name; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CF_NONE ;
 scalar_t__ CT_WORKSPACE ;
 int DLOG (char*,...) ;
 int con_set_fullscreen_mode (TYPE_1__*,scalar_t__) ;

void con_disable_fullscreen(Con *con) {
    if (con->type == CT_WORKSPACE) {
        DLOG("You cannot make a workspace fullscreen.\n");
        return;
    }

    DLOG("disabling fullscreen for %p / %s\n", con, con->name);

    if (con->fullscreen_mode == CF_NONE) {
        DLOG("fullscreen already disabled for %p / %s\n", con, con->name);
        return;
    }

    con_set_fullscreen_mode(con, CF_NONE);
}
