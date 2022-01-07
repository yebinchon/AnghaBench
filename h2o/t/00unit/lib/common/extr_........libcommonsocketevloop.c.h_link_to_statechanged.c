
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_h2o_evloop_socket_t {struct st_h2o_evloop_socket_t* _next_statechanged; TYPE_2__* loop; } ;
struct TYPE_3__ {struct st_h2o_evloop_socket_t** tail_ref; } ;
struct TYPE_4__ {TYPE_1__ _statechanged; } ;



__attribute__((used)) static void link_to_statechanged(struct st_h2o_evloop_socket_t *sock)
{
    if (sock->_next_statechanged == sock) {
        sock->_next_statechanged = ((void*)0);
        *sock->loop->_statechanged.tail_ref = sock;
        sock->loop->_statechanged.tail_ref = &sock->_next_statechanged;
    }
}
