
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int cb; } ;
struct st_util_session_cache_t {TYPE_1__ super; } ;
typedef int ptls_t ;
typedef int ptls_key_exchange_algorithm_t ;
struct TYPE_12__ {int * member_0; } ;
struct TYPE_11__ {TYPE_4__ member_0; } ;
struct TYPE_10__ {TYPE_3__ member_0; } ;
struct TYPE_13__ {TYPE_2__ member_0; } ;
typedef TYPE_5__ ptls_handshake_properties_t ;
struct TYPE_14__ {int max_early_data_size; TYPE_1__* encrypt_ticket; int ticket_lifetime; int * verify_certificate; int ** member_3; int ** member_2; int * member_1; int member_0; } ;
typedef TYPE_6__ ptls_context_t ;
typedef int ptls_cipher_suite_t ;
typedef int ptls_buffer_t ;


 int UINT_MAX ;
 int deterministic_random_bytes ;
 int encrypt_ticket_cb_fake ;
 int ptls_buffer_dispose (int *) ;
 int ptls_buffer_init (int *,char*,int ) ;
 int ptls_free (int *) ;
 int ptls_get_time ;
 int ptls_handshake (int *,int *,int const*,size_t*,TYPE_5__*) ;
 int * ptls_new (TYPE_6__*,int) ;
 int ptls_openssl_aes128gcmsha256 ;
 int ptls_openssl_aes256gcmsha384 ;
 int ptls_openssl_secp256r1 ;
 int ptls_receive (int *,int *,int const*,size_t*) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {

  ptls_key_exchange_algorithm_t *key_exchanges[128] = {((void*)0)};
  key_exchanges[0] = &ptls_openssl_secp256r1;

  ptls_cipher_suite_t *cipher_suites[] = {&ptls_openssl_aes128gcmsha256,
                                          &ptls_openssl_aes256gcmsha384, ((void*)0)};


  ptls_context_t ctx_server = {deterministic_random_bytes, &ptls_get_time,
                               key_exchanges, cipher_suites};
  ctx_server.verify_certificate = ((void*)0);


  struct st_util_session_cache_t sc;
  sc.super.cb = encrypt_ticket_cb_fake;
  ctx_server.ticket_lifetime = UINT_MAX;
  ctx_server.max_early_data_size = 8192;
  ctx_server.encrypt_ticket = &sc.super;


  ptls_t *tls_server = ptls_new(&ctx_server, 1);


  ptls_handshake_properties_t hsprop = {{{{((void*)0)}}}};


  ptls_buffer_t server_response;
  ptls_buffer_init(&server_response, "", 0);


  size_t consumed = size;
  int ret =
      ptls_handshake(tls_server, &server_response, data, &consumed, &hsprop);


  if (ret == 0 && size - consumed > 0) {
    size = size - consumed;

    ptls_buffer_dispose(&server_response);
    ptls_buffer_init(&server_response, "", 0);

    ptls_receive(tls_server, &server_response, data + consumed, &size);
  }


  ptls_buffer_dispose(&server_response);
  ptls_free(tls_server);


  return 0;
}
