
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; scalar_t__ floating; struct TYPE_4__* parent; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_FLOATING_CON ;
 scalar_t__ CT_OUTPUT ;
 scalar_t__ CT_WORKSPACE ;
 scalar_t__ FLOATING_AUTO_ON ;
 int assert (int ) ;

Con *con_inside_floating(Con *con) {
    assert(con != ((void*)0));
    if (con->type == CT_FLOATING_CON)
        return con;

    if (con->floating >= FLOATING_AUTO_ON)
        return con->parent;

    if (con->type == CT_WORKSPACE || con->type == CT_OUTPUT)
        return ((void*)0);

    return con_inside_floating(con->parent);
}
