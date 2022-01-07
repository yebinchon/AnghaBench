
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int listen; } ;
struct fd {TYPE_1__ sockrestart; int * ops; } ;


 int list_add (int *,int *) ;
 int listen_fds ;
 int lock (int *) ;
 int socket_fdops ;
 int sockrestart_lock ;
 int unlock (int *) ;

void sockrestart_begin_listen(struct fd *sock) {
    if (sock->ops != &socket_fdops)
        return;
    lock(&sockrestart_lock);
    list_add(&listen_fds, &sock->sockrestart.listen);
    unlock(&sockrestart_lock);
}
