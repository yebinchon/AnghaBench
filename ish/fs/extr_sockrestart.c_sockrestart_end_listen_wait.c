
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fd {int * ops; } ;
struct TYPE_3__ {scalar_t__ count; int listen; } ;
struct TYPE_4__ {TYPE_1__ sockrestart; } ;


 TYPE_2__* current ;
 int list_remove (int *) ;
 int lock (int *) ;
 int socket_fdops ;
 int sockrestart_lock ;
 int unlock (int *) ;

void sockrestart_end_listen_wait(struct fd *sock) {
    if (sock->ops != &socket_fdops)
        return;
    lock(&sockrestart_lock);
    current->sockrestart.count--;
    if (current->sockrestart.count == 0)
        list_remove(&current->sockrestart.listen);
    unlock(&sockrestart_lock);
}
