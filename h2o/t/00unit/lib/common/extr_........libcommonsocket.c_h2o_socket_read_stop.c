
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * read; } ;
struct TYPE_6__ {TYPE_1__ _cb; } ;
typedef TYPE_2__ h2o_socket_t ;


 int do_read_stop (TYPE_2__*) ;

void h2o_socket_read_stop(h2o_socket_t *sock)
{
    sock->_cb.read = ((void*)0);
    do_read_stop(sock);
}
