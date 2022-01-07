
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nodes_head; } ;
typedef TYPE_1__ Con ;


 int TAILQ_EMPTY (int *) ;

bool con_is_leaf(Con *con) {
    return TAILQ_EMPTY(&(con->nodes_head));
}
