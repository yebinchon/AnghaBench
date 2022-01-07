
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int urgent; struct TYPE_4__* parent; } ;
typedef TYPE_1__ Con ;


 scalar_t__ CT_DOCKAREA ;
 scalar_t__ CT_WORKSPACE ;
 int con_has_urgent_child (TYPE_1__*) ;

void con_update_parents_urgency(Con *con) {
    Con *parent = con->parent;





    if (con->type == CT_WORKSPACE)
        return;

    bool new_urgency_value = con->urgent;
    while (parent && parent->type != CT_WORKSPACE && parent->type != CT_DOCKAREA) {
        if (new_urgency_value) {
            parent->urgent = 1;
        } else {


            if (!con_has_urgent_child(parent))
                parent->urgent = 0;
        }
        parent = parent->parent;
    }
}
