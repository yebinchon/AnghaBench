
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_cache_t ;
typedef int X509_STORE ;
typedef int SSL_CTX ;


 int H2O_SESSID_CTX ;
 int H2O_SESSID_CTX_LEN ;
 int SSL_CTX_free (int *) ;
 int * SSL_CTX_get_cert_store (int *) ;
 int SSL_CTX_get_verify_mode (int *) ;
 int SSL_CTX_set_cert_store (int *,int *) ;
 int SSL_CTX_set_session_id_context (int *,int ,int ) ;
 int SSL_CTX_set_verify (int *,int,int *) ;
 int X509_STORE_up_ref (int *) ;
 int assert (int ) ;
 int * create_ssl_ctx () ;
 int * create_ssl_session_cache (int ,int ) ;
 int h2o_cache_get_capacity (int *) ;
 int h2o_cache_get_duration (int *) ;
 int * h2o_socket_ssl_get_session_cache (int *) ;
 int h2o_socket_ssl_set_session_cache (int *,int *) ;

__attribute__((used)) static void update_ssl_ctx(SSL_CTX **ctx, X509_STORE *cert_store, int verify_mode, h2o_cache_t **session_cache)
{
    assert(*ctx != ((void*)0));


    if (cert_store == ((void*)0))
        cert_store = SSL_CTX_get_cert_store(*ctx);
    X509_STORE_up_ref(cert_store);
    if (verify_mode == -1)
        verify_mode = SSL_CTX_get_verify_mode(*ctx);
    h2o_cache_t *new_session_cache;
    if (session_cache == ((void*)0)) {
        h2o_cache_t *current = h2o_socket_ssl_get_session_cache(*ctx);
        new_session_cache =
            current == ((void*)0) ? ((void*)0) : create_ssl_session_cache(h2o_cache_get_capacity(current), h2o_cache_get_duration(current));
    } else {
        new_session_cache = *session_cache;
    }


    if (*ctx != ((void*)0))
        SSL_CTX_free(*ctx);


    *ctx = create_ssl_ctx();
    SSL_CTX_set_session_id_context(*ctx, H2O_SESSID_CTX, H2O_SESSID_CTX_LEN);
    SSL_CTX_set_cert_store(*ctx, cert_store);
    SSL_CTX_set_verify(*ctx, verify_mode, ((void*)0));
    if (new_session_cache != ((void*)0))
        h2o_socket_ssl_set_session_cache(*ctx, new_session_cache);
}
