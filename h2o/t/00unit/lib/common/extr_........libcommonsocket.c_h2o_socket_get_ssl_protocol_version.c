
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ssl; } ;
typedef TYPE_2__ h2o_socket_t ;
struct TYPE_4__ {int * ossl; int * ptls; } ;


 char const* SSL_get_version (int *) ;

const char *h2o_socket_get_ssl_protocol_version(h2o_socket_t *sock)
{
    if (sock->ssl != ((void*)0)) {
        if (sock->ssl->ptls != ((void*)0))
            return "TLSv1.3";
        if (sock->ssl->ossl != ((void*)0))
            return SSL_get_version(sock->ssl->ossl);
    }
    return ((void*)0);
}
