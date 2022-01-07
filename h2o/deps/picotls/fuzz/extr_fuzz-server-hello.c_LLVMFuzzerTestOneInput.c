
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
struct st_util_save_ticket_t {TYPE_1__ super; } ;
typedef int ptls_t ;
typedef int ptls_key_exchange_algorithm_t ;
struct TYPE_12__ {int * member_0; } ;
struct TYPE_11__ {TYPE_4__ member_0; } ;
struct TYPE_10__ {TYPE_3__ member_0; } ;
struct TYPE_13__ {TYPE_2__ member_0; } ;
typedef TYPE_5__ ptls_handshake_properties_t ;
struct TYPE_14__ {TYPE_1__* save_ticket; int * verify_certificate; int ** member_3; int ** member_2; int * member_1; int member_0; } ;
typedef TYPE_6__ ptls_context_t ;
typedef int ptls_cipher_suite_t ;
typedef int ptls_buffer_t ;


 int deterministic_random_bytes ;
 int fake_ticket_cb ;
 int ptls_buffer_dispose (int *) ;
 int ptls_buffer_init (int *,char*,int ) ;
 int ptls_free (int *) ;
 int ptls_get_time ;
 int ptls_handshake (int *,int *,int const*,size_t*,TYPE_5__*) ;
 int * ptls_new (TYPE_6__*,int ) ;
 int ptls_openssl_aes128gcmsha256 ;
 int ptls_openssl_secp256r1 ;
 int ptls_receive (int *,int *,int const*,size_t*) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {

  ptls_key_exchange_algorithm_t *key_exchanges[128] = {((void*)0)};
  key_exchanges[0] = &ptls_openssl_secp256r1;
  ptls_cipher_suite_t *cipher_suites[] = {&ptls_openssl_aes128gcmsha256, ((void*)0)};


  ptls_context_t ctx_client = {deterministic_random_bytes, &ptls_get_time,
                               key_exchanges, cipher_suites};
  ctx_client.verify_certificate = ((void*)0);


  ptls_t *tls_client = ptls_new(&ctx_client, 0);


  static struct st_util_save_ticket_t st;
  st.super.cb = fake_ticket_cb;
  ctx_client.save_ticket = &st.super;


  ptls_handshake_properties_t hsprop = {{{{((void*)0)}}}};


  ptls_buffer_t client_encbuf;
  ptls_buffer_init(&client_encbuf, "", 0);


  ptls_handshake(tls_client, &client_encbuf, ((void*)0), 0, &hsprop);


  ptls_buffer_dispose(&client_encbuf);
  ptls_buffer_init(&client_encbuf, "", 0);


  size_t consumed = size;
  int ret =
      ptls_handshake(tls_client, &client_encbuf, data, &consumed, &hsprop);


  if (ret == 0 && size - consumed > 0) {
    size = size - consumed;

    ptls_buffer_dispose(&client_encbuf);
    ptls_buffer_init(&client_encbuf, "", 0);

    ptls_receive(tls_client, &client_encbuf, data + consumed, &size);
  }


  ptls_buffer_dispose(&client_encbuf);
  ptls_free(tls_client);

  return 0;
}
