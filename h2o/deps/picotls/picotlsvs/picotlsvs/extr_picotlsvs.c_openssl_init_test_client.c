
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int super; } ;
typedef TYPE_1__ ptls_openssl_verify_certificate_t ;
struct TYPE_7__ {int * verify_certificate; int cipher_suites; int key_exchanges; int * get_time; int random_bytes; } ;
typedef TYPE_2__ ptls_context_t ;
typedef int X509_STORE ;


 int memset (TYPE_2__*,int ,int) ;
 int openssl_init_cert_store (char const*) ;
 int ptls_get_time ;
 int ptls_openssl_cipher_suites ;
 int ptls_openssl_init_verify_certificate (TYPE_1__*,int ) ;
 int ptls_openssl_key_exchanges ;
 int ptls_openssl_random_bytes ;

int openssl_init_test_client(ptls_context_t *ctx_client, char const * crt_file)
{
 int ret = 0;
 static ptls_openssl_verify_certificate_t verifier;
    X509_STORE *store = ((void*)0);


 memset(ctx_client, 0, sizeof(ptls_context_t));
 ctx_client->random_bytes = ptls_openssl_random_bytes;
    ctx_client->get_time = &ptls_get_time;
 ctx_client->key_exchanges = ptls_openssl_key_exchanges;
 ctx_client->cipher_suites = ptls_openssl_cipher_suites;
 ptls_openssl_init_verify_certificate(&verifier, openssl_init_cert_store(crt_file));
 ctx_client->verify_certificate = &verifier.super;

 return ret;
}
