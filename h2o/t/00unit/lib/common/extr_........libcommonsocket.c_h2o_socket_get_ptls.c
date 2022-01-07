
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptls_t ;
struct TYPE_5__ {TYPE_1__* ssl; } ;
typedef TYPE_2__ h2o_socket_t ;
struct TYPE_4__ {int * ptls; } ;



ptls_t *h2o_socket_get_ptls(h2o_socket_t *sock)
{
    return sock->ssl != ((void*)0) ? sock->ssl->ptls : ((void*)0);
}
