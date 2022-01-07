
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ssl; } ;
typedef TYPE_2__ h2o_socket_t ;
struct TYPE_4__ {int * ossl; int * ptls; } ;


 char const* SSL_get_servername (int *,int ) ;
 int TLSEXT_NAMETYPE_host_name ;
 char const* ptls_get_server_name (int *) ;

const char *h2o_socket_get_ssl_server_name(const h2o_socket_t *sock)
{
    if (sock->ssl != ((void*)0)) {





            if (sock->ssl->ossl != ((void*)0)) {
            return SSL_get_servername(sock->ssl->ossl, TLSEXT_NAMETYPE_host_name);
        }
    }
    return ((void*)0);
}
