
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cipher_suites; int key_exchanges; int * get_time; int random_bytes; } ;
typedef TYPE_1__ ptls_context_t ;


 int SetSignCertificate (char const*,TYPE_1__*) ;
 int fprintf (int ,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int ptls_get_time ;
 int ptls_load_certificates (TYPE_1__*,char const*) ;
 int ptls_openssl_cipher_suites ;
 int ptls_openssl_key_exchanges ;
 int ptls_openssl_random_bytes ;
 int stderr ;

int openssl_init_test_server(ptls_context_t *ctx_server,
    char const * key_file, char const * cert_file)
{
 int ret = 0;

 memset(ctx_server, 0, sizeof(ptls_context_t));
 ctx_server->random_bytes = ptls_openssl_random_bytes;
    ctx_server->get_time = &ptls_get_time;
 ctx_server->key_exchanges = ptls_openssl_key_exchanges;
 ctx_server->cipher_suites = ptls_openssl_cipher_suites;

 ret = ptls_load_certificates(ctx_server, cert_file);
 if (ret != 0)
 {
  fprintf(stderr, "Could not read the server certificates\n");
 }
 else
 {
  SetSignCertificate(key_file, ctx_server);
 }

 return ret;
}
