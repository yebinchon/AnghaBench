
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; scalar_t__ layout; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_FLOATING_CON ;
 scalar_t__ CT_WORKSPACE ;
 scalar_t__ L_STACKED ;
 scalar_t__ L_TABBED ;
 scalar_t__ con_is_leaf (TYPE_1__*) ;

bool should_inset_con(Con *con, int children) {

    if (con->type == CT_FLOATING_CON || con->type == CT_WORKSPACE)
        return 0;

    if (con_is_leaf(con))
        return 1;

    return (con->layout == L_STACKED || con->layout == L_TABBED) && children > 0;
}
