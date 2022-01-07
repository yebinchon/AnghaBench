
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int floating_head; } ;
typedef TYPE_1__ Con ;


 int TAILQ_EMPTY (int *) ;
 int con_is_leaf (TYPE_1__*) ;

bool con_has_children(Con *con) {
    return (!con_is_leaf(con) || !TAILQ_EMPTY(&(con->floating_head)));
}
