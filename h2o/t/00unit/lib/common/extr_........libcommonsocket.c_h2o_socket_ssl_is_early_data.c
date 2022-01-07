
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ssl; } ;
typedef TYPE_2__ h2o_socket_t ;
struct TYPE_4__ {int * ptls; } ;


 int assert (int ) ;
 int ptls_handshake_is_complete (int *) ;

int h2o_socket_ssl_is_early_data(h2o_socket_t *sock)
{
    assert(sock->ssl != ((void*)0));

    if (sock->ssl->ptls != ((void*)0) && !ptls_handshake_is_complete(sock->ssl->ptls))
        return 1;
    return 0;
}
