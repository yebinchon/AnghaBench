
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int SSL_CTX_set_session_cache_mode (int *,int ) ;
 int SSL_SESS_CACHE_OFF ;

__attribute__((used)) static void setup_cache_disable(SSL_CTX **contexts, size_t num_contexts)
{
    size_t i;
    for (i = 0; i != num_contexts; ++i)
        SSL_CTX_set_session_cache_mode(contexts[i], SSL_SESS_CACHE_OFF);
}
