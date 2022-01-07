
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ssl_ctx; } ;


 int OpenSSL_add_all_algorithms () ;
 int SSL_CTX_new (int ) ;
 int SSL_CTX_set_options (int ,int ) ;
 int SSL_CTX_use_PrivateKey_file (int ,char const*,int ) ;
 int SSL_CTX_use_certificate_chain_file (int ,char const*) ;
 int SSL_FILETYPE_PEM ;
 int SSL_OP_NO_SSLv2 ;
 int SSL_library_init () ;
 int SSL_load_error_strings () ;
 int SSLv23_server_method () ;
 TYPE_1__ accept_ctx ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static int setup_ssl(const char *cert_file, const char *key_file)
{
    SSL_load_error_strings();
    SSL_library_init();
    OpenSSL_add_all_algorithms();

    accept_ctx.ssl_ctx = SSL_CTX_new(SSLv23_server_method());
    SSL_CTX_set_options(accept_ctx.ssl_ctx, SSL_OP_NO_SSLv2);


    if (SSL_CTX_use_certificate_chain_file(accept_ctx.ssl_ctx, cert_file) != 1) {
        fprintf(stderr, "an error occurred while trying to load server certificate file:%s\n", cert_file);
        return -1;
    }
    if (SSL_CTX_use_PrivateKey_file(accept_ctx.ssl_ctx, key_file, SSL_FILETYPE_PEM) != 1) {
        fprintf(stderr, "an error occurred while trying to load private key file:%s\n", key_file);
        return -1;
    }

    return 0;
}
