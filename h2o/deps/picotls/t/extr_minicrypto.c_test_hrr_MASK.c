#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  sbuf_small ;
typedef  int /*<<< orphan*/  ptls_t ;
typedef  int /*<<< orphan*/  ptls_key_exchange_algorithm_t ;
struct TYPE_12__ {TYPE_1__** key_exchanges; int /*<<< orphan*/  member_3; int /*<<< orphan*/ ** member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ ptls_context_t ;
struct TYPE_13__ {size_t off; int* base; } ;
typedef  TYPE_3__ ptls_buffer_t ;
typedef  int /*<<< orphan*/  decbuf_small ;
typedef  int /*<<< orphan*/  cbuf_small ;
struct TYPE_11__ {scalar_t__ id; } ;

/* Variables and functions */
 int PTLS_ERROR_IN_PROGRESS ; 
 scalar_t__ PTLS_GROUP_SECP256R1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* ctx_peer ; 
 scalar_t__ FUNC1 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ptls_get_time ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_3__*,int*,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ptls_minicrypto_cipher_suites ; 
 int /*<<< orphan*/  ptls_minicrypto_random_bytes ; 
 int /*<<< orphan*/  ptls_minicrypto_secp256r1 ; 
 int /*<<< orphan*/  ptls_minicrypto_x25519 ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_3__*,int*,size_t*) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_3__*,char*,int) ; 

__attribute__((used)) static void FUNC10(void)
{
    ptls_key_exchange_algorithm_t *client_keyex[] = {&ptls_minicrypto_x25519, &ptls_minicrypto_secp256r1, NULL};
    ptls_context_t client_ctx = {ptls_minicrypto_random_bytes, ptls_get_time, client_keyex, &ptls_minicrypto_cipher_suites};
    ptls_t *client, *server;
    ptls_buffer_t cbuf, sbuf, decbuf;
    uint8_t cbuf_small[16384], sbuf_small[16384], decbuf_small[16384];
    size_t consumed;
    int ret;

    FUNC0(ctx_peer->key_exchanges[0] != NULL && ctx_peer->key_exchanges[0]->id == PTLS_GROUP_SECP256R1);
    FUNC0(ctx_peer->key_exchanges[1] == NULL);

    client = FUNC7(&client_ctx, 0);
    server = FUNC7(ctx_peer, 1);
    FUNC4(&cbuf, cbuf_small, sizeof(cbuf_small));
    FUNC4(&sbuf, sbuf_small, sizeof(sbuf_small));
    FUNC4(&decbuf, decbuf_small, sizeof(decbuf_small));

    ret = FUNC6(client, &cbuf, NULL, NULL, NULL);
    FUNC2(ret == PTLS_ERROR_IN_PROGRESS);

    consumed = cbuf.off;
    ret = FUNC6(server, &sbuf, cbuf.base, &consumed, NULL);
    FUNC2(ret == PTLS_ERROR_IN_PROGRESS);
    FUNC2(consumed == cbuf.off);
    cbuf.off = 0;

    FUNC2(sbuf.off > 5 + 4);
    FUNC2(sbuf.base[5] == 2 /* PTLS_HANDSHAKE_TYPE_SERVER_HELLO (RETRY_REQUEST) */);

    consumed = sbuf.off;
    ret = FUNC6(client, &cbuf, sbuf.base, &consumed, NULL);
    FUNC2(ret == PTLS_ERROR_IN_PROGRESS);
    FUNC2(consumed == sbuf.off);
    sbuf.off = 0;

    FUNC2(cbuf.off >= 5 + 4);
    FUNC2(cbuf.base[5] == 1 /* PTLS_HANDSHAKE_TYPE_CLIENT_HELLO */);

    consumed = cbuf.off;
    ret = FUNC6(server, &sbuf, cbuf.base, &consumed, NULL);
    FUNC2(ret == 0);
    FUNC2(consumed == cbuf.off);
    cbuf.off = 0;

    FUNC2(sbuf.off >= 5 + 4);
    FUNC2(sbuf.base[5] == 2 /* PTLS_HANDSHAKE_TYPE_SERVER_HELLO */);

    consumed = sbuf.off;
    ret = FUNC6(client, &cbuf, sbuf.base, &consumed, NULL);
    FUNC2(ret == 0);
    FUNC2(consumed == sbuf.off);
    sbuf.off = 0;

    ret = FUNC9(client, &cbuf, "hello world", 11);
    FUNC2(ret == 0);

    consumed = cbuf.off;
    ret = FUNC8(server, &decbuf, cbuf.base, &consumed);
    FUNC2(ret == 0);
    FUNC2(consumed == cbuf.off);
    cbuf.off = 0;

    FUNC2(decbuf.off == 11);
    FUNC2(FUNC1(decbuf.base, "hello world", 11) == 0);

    FUNC3(&decbuf);
    FUNC3(&sbuf);
    FUNC3(&cbuf);
    FUNC5(client);
    FUNC5(server);
}