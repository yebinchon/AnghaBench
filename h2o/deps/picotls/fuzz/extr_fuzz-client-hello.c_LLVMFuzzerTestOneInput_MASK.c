#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int /*<<< orphan*/  cb; } ;
struct st_util_session_cache_t {TYPE_1__ super; } ;
typedef  int /*<<< orphan*/  ptls_t ;
typedef  int /*<<< orphan*/  ptls_key_exchange_algorithm_t ;
struct TYPE_12__ {int /*<<< orphan*/ * member_0; } ;
struct TYPE_11__ {TYPE_4__ member_0; } ;
struct TYPE_10__ {TYPE_3__ member_0; } ;
struct TYPE_13__ {TYPE_2__ member_0; } ;
typedef  TYPE_5__ ptls_handshake_properties_t ;
struct TYPE_14__ {int max_early_data_size; TYPE_1__* encrypt_ticket; int /*<<< orphan*/  ticket_lifetime; int /*<<< orphan*/ * verify_certificate; int /*<<< orphan*/ ** member_3; int /*<<< orphan*/ ** member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_6__ ptls_context_t ;
typedef  int /*<<< orphan*/  ptls_cipher_suite_t ;
typedef  int /*<<< orphan*/  ptls_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  deterministic_random_bytes ; 
 int /*<<< orphan*/  encrypt_ticket_cb_fake ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ptls_get_time ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t*,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  ptls_openssl_aes128gcmsha256 ; 
 int /*<<< orphan*/  ptls_openssl_aes256gcmsha384 ; 
 int /*<<< orphan*/  ptls_openssl_secp256r1 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t*) ; 

int FUNC6(const uint8_t *data, size_t size) {
  // key exchanges
  ptls_key_exchange_algorithm_t *key_exchanges[128] = {NULL};
  key_exchanges[0] = &ptls_openssl_secp256r1;
  // the second cipher suite is used for the PSK ticket
  ptls_cipher_suite_t *cipher_suites[] = {&ptls_openssl_aes128gcmsha256,
                                          &ptls_openssl_aes256gcmsha384, NULL};

  // create ptls_context_t
  ptls_context_t ctx_server = {deterministic_random_bytes, &ptls_get_time,
                               key_exchanges, cipher_suites};
  ctx_server.verify_certificate = NULL;

  // setup server fake cache
  struct st_util_session_cache_t sc;
  sc.super.cb = encrypt_ticket_cb_fake;
  ctx_server.ticket_lifetime = UINT_MAX;
  ctx_server.max_early_data_size = 8192;
  ctx_server.encrypt_ticket = &sc.super;

  // create pls_t
  ptls_t *tls_server = FUNC4(&ctx_server, 1);  // 1: server

  // empty hsprop
  ptls_handshake_properties_t hsprop = {{{{NULL}}}};

  // buffers
  ptls_buffer_t server_response;
  FUNC1(&server_response, "", 0);

  // accept client_hello
  size_t consumed = size;
  int ret =
      FUNC3(tls_server, &server_response, data, &consumed, &hsprop);

  // more messages to parse?
  if (ret == 0 && size - consumed > 0) {
    size = size - consumed;
    // reset buffer
    FUNC0(&server_response);
    FUNC1(&server_response, "", 0);
    // receive messages
    FUNC5(tls_server, &server_response, data + consumed, &size);
  }

  // clean
  FUNC0(&server_response);
  FUNC2(tls_server);

  //
  return 0;
}