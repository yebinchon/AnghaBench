
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_FLOATING_CON ;
 int ELOG (char*,TYPE_1__*) ;
 int LOG (char*) ;
 scalar_t__ con_is_floating (TYPE_1__*) ;
 int floating_disable (TYPE_1__*) ;
 int floating_enable (TYPE_1__*,int) ;

void toggle_floating_mode(Con *con, bool automatic) {

    if (con->type == CT_FLOATING_CON) {
        ELOG("Cannot toggle floating mode on con = %p because it is of type CT_FLOATING_CON.\n", con);
        return;
    }


    if (con_is_floating(con)) {
        LOG("already floating, re-setting to tiling\n");

        floating_disable(con);
        return;
    }

    floating_enable(con, automatic);
}
