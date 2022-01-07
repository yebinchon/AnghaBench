
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int listen; } ;
struct fd {TYPE_1__ sockrestart; int * ops; } ;


 int list_remove_safe (int *) ;
 int lock (int *) ;
 int socket_fdops ;
 int sockrestart_lock ;
 int unlock (int *) ;

void sockrestart_end_listen(struct fd *sock) {
    if (sock->ops != &socket_fdops)
        return;
    lock(&sockrestart_lock);
    list_remove_safe(&sock->sockrestart.listen);
    unlock(&sockrestart_lock);
}
