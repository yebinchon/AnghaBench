
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * verify_certificate; int cipher_suites; int key_exchanges; int * get_time; int random_bytes; } ;
typedef TYPE_1__ ptls_context_t ;


 int memset (TYPE_1__*,int ,int) ;
 int ptls_get_time ;
 int ptls_minicrypto_cipher_suites ;
 int ptls_minicrypto_key_exchanges ;
 int ptls_minicrypto_random_bytes ;

int minicrypto_init_test_client(ptls_context_t *ctx_client)
{
 int ret = 0;

 memset(ctx_client, 0, sizeof(ptls_context_t));
 ctx_client->random_bytes = ptls_minicrypto_random_bytes;
    ctx_client->get_time = &ptls_get_time;
 ctx_client->key_exchanges = ptls_minicrypto_key_exchanges;
 ctx_client->cipher_suites = ptls_minicrypto_cipher_suites;
 ctx_client->verify_certificate = ((void*)0);

 return ret;
}
