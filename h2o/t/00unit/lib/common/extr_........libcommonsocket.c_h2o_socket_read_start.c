
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int read; } ;
struct TYPE_6__ {TYPE_1__ _cb; } ;
typedef TYPE_2__ h2o_socket_t ;
typedef int h2o_socket_cb ;


 int do_read_start (TYPE_2__*) ;

void h2o_socket_read_start(h2o_socket_t *sock, h2o_socket_cb cb)
{
    sock->_cb.read = cb;
    do_read_start(sock);
}
