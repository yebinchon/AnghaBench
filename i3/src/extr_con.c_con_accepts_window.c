
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; int * window; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_WORKSPACE ;
 int DLOG (char*,TYPE_1__*) ;
 scalar_t__ con_is_split (TYPE_1__*) ;

bool con_accepts_window(Con *con) {

    if (con->type == CT_WORKSPACE)
        return 0;

    if (con_is_split(con)) {
        DLOG("container %p does not accept windows, it is a split container.\n", con);
        return 0;
    }


    return (con->window == ((void*)0));
}
