
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct listener_ssl_config_t {scalar_t__ ctx; } ;
struct listener_config_t {int dummy; } ;
typedef int SSL ;


 int SSL_TLSEXT_ERR_OK ;
 scalar_t__ SSL_get_SSL_CTX (int *) ;
 char* SSL_get_servername (int *,int ) ;
 int SSL_set_SSL_CTX (int *,scalar_t__) ;
 int TLSEXT_NAMETYPE_host_name ;
 struct listener_ssl_config_t* resolve_sni (struct listener_config_t*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int on_sni_callback(SSL *ssl, int *ad, void *arg)
{
    struct listener_config_t *listener = arg;
    const char *server_name = SSL_get_servername(ssl, TLSEXT_NAMETYPE_host_name);

    if (server_name != ((void*)0)) {
        struct listener_ssl_config_t *resolved = resolve_sni(listener, server_name, strlen(server_name));
        if (resolved->ctx != SSL_get_SSL_CTX(ssl))
            SSL_set_SSL_CTX(ssl, resolved->ctx);
    }

    return SSL_TLSEXT_ERR_OK;
}
