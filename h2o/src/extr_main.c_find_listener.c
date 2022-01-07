
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_3__ {int * ctx; } ;
struct listener_config_t {scalar_t__ addrlen; TYPE_1__ quic; int addr; } ;
typedef scalar_t__ socklen_t ;
struct TYPE_4__ {size_t num_listeners; struct listener_config_t** listeners; } ;


 TYPE_2__ conf ;
 scalar_t__ h2o_socket_compare_address (void*,struct sockaddr*,int) ;

__attribute__((used)) static struct listener_config_t *find_listener(struct sockaddr *addr, socklen_t addrlen, int is_quic)
{
    size_t i;

    for (i = 0; i != conf.num_listeners; ++i) {
        struct listener_config_t *listener = conf.listeners[i];
        if (listener->addrlen == addrlen && h2o_socket_compare_address((void *)&listener->addr, addr, 1) == 0 &&
            (listener->quic.ctx != ((void*)0)) == is_quic)
            return listener;
    }

    return ((void*)0);
}
