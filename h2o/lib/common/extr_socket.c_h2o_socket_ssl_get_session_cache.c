
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_cache_t ;
typedef int SSL_CTX ;


 scalar_t__ SSL_CTX_get_ex_data (int *,int ) ;
 int get_ssl_session_cache_index () ;

h2o_cache_t *h2o_socket_ssl_get_session_cache(SSL_CTX *ctx)
{
    return (h2o_cache_t *)SSL_CTX_get_ex_data(ctx, get_ssl_session_cache_index());
}
