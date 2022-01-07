
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * _ssl_ctx; } ;
typedef TYPE_1__ h2o_socketpool_t ;
typedef int SSL_CTX ;


 int SSL_CTX_free (int *) ;
 int SSL_CTX_up_ref (int *) ;

void h2o_socketpool_set_ssl_ctx(h2o_socketpool_t *pool, SSL_CTX *ssl_ctx)
{
    if (pool->_ssl_ctx != ((void*)0))
        SSL_CTX_free(pool->_ssl_ctx);
    if (ssl_ctx != ((void*)0))
        SSL_CTX_up_ref(ssl_ctx);
    pool->_ssl_ctx = ssl_ctx;
}
