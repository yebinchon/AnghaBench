
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int H2O_SESSID_CTX ;
 int H2O_SESSID_CTX_LEN ;
 long SSL_CTX_get_options (int *) ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_sess_set_new_cb (int *,int ) ;
 int SSL_CTX_set_options (int *,long) ;
 int SSL_CTX_set_session_cache_mode (int *,int) ;
 int SSL_CTX_set_session_id_context (int *,int ,int ) ;
 long SSL_OP_NO_RENEGOTIATION ;
 long SSL_OP_NO_SSLv2 ;
 long SSL_OP_NO_SSLv3 ;
 int SSL_SESS_CACHE_CLIENT ;
 int SSL_SESS_CACHE_NO_INTERNAL_STORE ;
 int SSLv23_client_method () ;
 int h2o_socket_ssl_new_session_cb ;

__attribute__((used)) static SSL_CTX *create_ssl_ctx(void)
{
    long options;
    SSL_CTX *ctx = SSL_CTX_new(SSLv23_client_method());
    options = SSL_CTX_get_options(ctx) | SSL_OP_NO_SSLv2 | SSL_OP_NO_SSLv3;




    SSL_CTX_set_options(ctx, options);
    SSL_CTX_set_session_id_context(ctx, H2O_SESSID_CTX, H2O_SESSID_CTX_LEN);
    SSL_CTX_set_session_cache_mode(ctx, SSL_SESS_CACHE_CLIENT | SSL_SESS_CACHE_NO_INTERNAL_STORE);
    SSL_CTX_sess_set_new_cb(ctx, h2o_socket_ssl_new_session_cb);
    return ctx;
}
