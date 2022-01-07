
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * write; } ;
struct TYPE_6__ {TYPE_2__ _cb; } ;
struct TYPE_4__ {scalar_t__ cnt; } ;
struct st_h2o_evloop_socket_t {TYPE_3__ super; TYPE_1__ _wreq; } ;
typedef int h2o_socket_t ;
typedef int * h2o_socket_cb ;


 int assert (int) ;
 int link_to_statechanged (struct st_h2o_evloop_socket_t*) ;

void h2o_socket_notify_write(h2o_socket_t *_sock, h2o_socket_cb cb)
{
    struct st_h2o_evloop_socket_t *sock = (struct st_h2o_evloop_socket_t *)_sock;
    assert(sock->super._cb.write == ((void*)0));
    assert(sock->_wreq.cnt == 0);

    sock->super._cb.write = cb;
    link_to_statechanged(sock);
}
