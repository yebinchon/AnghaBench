
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_cache_t ;
typedef int CRYPTO_EX_DATA ;


 int h2o_cache_destroy (int *) ;

__attribute__((used)) static void on_dispose_ssl_ctx_session_cache(void *parent, void *ptr, CRYPTO_EX_DATA *ad, int idx, long argl, void *argp)
{
    h2o_cache_t *ssl_session_cache = (h2o_cache_t *)ptr;
    if (ssl_session_cache != ((void*)0))
        h2o_cache_destroy(ssl_session_cache);
}
