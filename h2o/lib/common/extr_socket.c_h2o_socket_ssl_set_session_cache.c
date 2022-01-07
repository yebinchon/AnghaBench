
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_cache_t ;
typedef int SSL_CTX ;


 int SSL_CTX_set_ex_data (int *,int ,int *) ;
 int get_ssl_session_cache_index () ;

void h2o_socket_ssl_set_session_cache(SSL_CTX *ctx, h2o_cache_t *cache)
{
    SSL_CTX_set_ex_data(ctx, get_ssl_session_cache_index(), cache);
}
