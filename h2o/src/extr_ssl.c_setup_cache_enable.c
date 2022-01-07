
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lifetime; } ;
typedef int SSL_CTX ;


 int H2O_SESSID_CTX ;
 int H2O_SESSID_CTX_LEN ;
 int SSL_CTX_set_session_cache_mode (int *,int) ;
 int SSL_CTX_set_session_id_context (int *,int ,int ) ;
 int SSL_CTX_set_timeout (int *,int ) ;
 int SSL_SESS_CACHE_NO_AUTO_CLEAR ;
 int SSL_SESS_CACHE_SERVER ;
 TYPE_1__ conf ;
 int h2o_socket_ssl_async_resumption_setup_ctx (int *) ;
 int spawn_cache_cleanup_thread (int **,size_t) ;

__attribute__((used)) static void setup_cache_enable(SSL_CTX **contexts, size_t num_contexts, int async_resumption)
{
    size_t i;
    for (i = 0; i != num_contexts; ++i) {
        SSL_CTX_set_session_cache_mode(contexts[i], SSL_SESS_CACHE_SERVER | SSL_SESS_CACHE_NO_AUTO_CLEAR);
        SSL_CTX_set_session_id_context(contexts[i], H2O_SESSID_CTX, H2O_SESSID_CTX_LEN);
        SSL_CTX_set_timeout(contexts[i], conf.lifetime);
        if (async_resumption)
            h2o_socket_ssl_async_resumption_setup_ctx(contexts[i]);
    }
    spawn_cache_cleanup_thread(contexts, num_contexts);
}
