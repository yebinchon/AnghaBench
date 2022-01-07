
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ orientation_t ;
struct TYPE_5__ {scalar_t__ type; struct TYPE_5__* parent; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_FLOATING_CON ;
 scalar_t__ CT_OUTPUT ;
 int DLOG (char*,...) ;
 scalar_t__ con_orientation (TYPE_1__*) ;

Con *con_parent_with_orientation(Con *con, orientation_t orientation) {
    DLOG("Searching for parent of Con %p with orientation %d\n", con, orientation);
    Con *parent = con->parent;
    if (parent->type == CT_FLOATING_CON)
        return ((void*)0);
    while (con_orientation(parent) != orientation) {
        DLOG("Need to go one level further up\n");
        parent = parent->parent;

        if (parent &&
            (parent->type == CT_FLOATING_CON ||
             parent->type == CT_OUTPUT ||
             (parent->parent && parent->parent->type == CT_OUTPUT)))
            parent = ((void*)0);
        if (parent == ((void*)0))
            break;
    }
    DLOG("Result: %p\n", parent);
    return parent;
}
