
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; struct TYPE_3__* parent; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_DOCKAREA ;

bool con_is_docked(Con *con) {
    if (con->parent == ((void*)0))
        return 0;

    if (con->parent->type == CT_DOCKAREA)
        return 1;

    return con_is_docked(con->parent);
}
