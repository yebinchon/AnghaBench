
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ssl_ctx; int * libmemcached_receiver; } ;


 int OpenSSL_add_all_algorithms () ;
 int SSL_CTX_new (int ) ;
 int SSL_CTX_set_cipher_list (int ,char const*) ;
 int SSL_CTX_set_ecdh_auto (int ,int) ;
 int SSL_CTX_set_options (int ,int ) ;
 int SSL_CTX_use_PrivateKey_file (int ,char const*,int ) ;
 int SSL_CTX_use_certificate_chain_file (int ,char const*) ;
 int SSL_FILETYPE_PEM ;
 int SSL_OP_NO_SSLv2 ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;
 int SSLv23_server_method () ;
 scalar_t__ USE_MEMCACHED ;
 TYPE_1__ accept_ctx ;
 int fprintf (int ,char*,char const*) ;
 int h2o_accept_setup_memcached_ssl_resumption (int ,int) ;
 int h2o_http2_alpn_protocols ;
 int h2o_http2_npn_protocols ;
 int h2o_memcached_create_context (char*,int,int ,int,char*) ;
 int h2o_socket_ssl_async_resumption_setup_ctx (int ) ;
 int h2o_ssl_register_alpn_protocols (int ,int ) ;
 int h2o_ssl_register_npn_protocols (int ,int ) ;
 int libmemcached_receiver ;
 int stderr ;

__attribute__((used)) static int setup_ssl(const char *cert_file, const char *key_file, const char *ciphers)
{
    SSL_load_error_strings();
    SSL_library_init();
    OpenSSL_add_all_algorithms();

    accept_ctx.ssl_ctx = SSL_CTX_new(SSLv23_server_method());
    SSL_CTX_set_options(accept_ctx.ssl_ctx, SSL_OP_NO_SSLv2);

    if (USE_MEMCACHED) {
        accept_ctx.libmemcached_receiver = &libmemcached_receiver;
        h2o_accept_setup_memcached_ssl_resumption(h2o_memcached_create_context("127.0.0.1", 11211, 0, 1, "h2o:ssl-resumption:"),
                                                  86400);
        h2o_socket_ssl_async_resumption_setup_ctx(accept_ctx.ssl_ctx);
    }






    if (SSL_CTX_use_certificate_chain_file(accept_ctx.ssl_ctx, cert_file) != 1) {
        fprintf(stderr, "an error occurred while trying to load server certificate file:%s\n", cert_file);
        return -1;
    }
    if (SSL_CTX_use_PrivateKey_file(accept_ctx.ssl_ctx, key_file, SSL_FILETYPE_PEM) != 1) {
        fprintf(stderr, "an error occurred while trying to load private key file:%s\n", key_file);
        return -1;
    }

    if (SSL_CTX_set_cipher_list(accept_ctx.ssl_ctx, ciphers) != 1) {
        fprintf(stderr, "ciphers could not be set: %s\n", ciphers);
        return -1;
    }
    return 0;
}
