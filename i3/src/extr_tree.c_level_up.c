
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; struct TYPE_4__* parent; } ;
struct TYPE_3__ {scalar_t__ type; TYPE_2__* parent; } ;


 scalar_t__ CT_CON ;
 scalar_t__ CT_FLOATING_CON ;
 scalar_t__ CT_WORKSPACE ;
 int ELOG (char*) ;
 int con_activate (TYPE_2__*) ;
 TYPE_1__* focused ;

bool level_up(void) {


    if (focused->parent->type == CT_FLOATING_CON) {
        con_activate(focused->parent->parent);
        return 1;
    }


    if ((focused->parent->type != CT_CON &&
         focused->parent->type != CT_WORKSPACE) ||
        focused->type == CT_WORKSPACE) {
        ELOG("'focus parent': Focus is already on the workspace, cannot go higher than that.\n");
        return 0;
    }
    con_activate(focused->parent);
    return 1;
}
