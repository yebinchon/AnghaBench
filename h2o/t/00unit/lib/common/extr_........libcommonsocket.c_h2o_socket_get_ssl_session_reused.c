
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ssl; } ;
typedef TYPE_2__ h2o_socket_t ;
struct TYPE_4__ {int * ossl; int * ptls; } ;


 scalar_t__ SSL_session_reused (int *) ;
 int ptls_is_psk_handshake (int *) ;

int h2o_socket_get_ssl_session_reused(h2o_socket_t *sock)
{
    if (sock->ssl != ((void*)0)) {
        if (sock->ssl->ptls != ((void*)0))
            return ptls_is_psk_handshake(sock->ssl->ptls);
        if (sock->ssl->ossl != ((void*)0))
            return (int)SSL_session_reused(sock->ssl->ossl);
    }
    return -1;
}
