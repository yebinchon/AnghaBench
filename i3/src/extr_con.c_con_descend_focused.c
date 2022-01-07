
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int focus_head; } ;
typedef TYPE_1__ Con ;


 int TAILQ_EMPTY (int *) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 TYPE_1__* focused ;

Con *con_descend_focused(Con *con) {
    Con *next = con;
    while (next != focused && !TAILQ_EMPTY(&(next->focus_head)))
        next = TAILQ_FIRST(&(next->focus_head));
    return next;
}
