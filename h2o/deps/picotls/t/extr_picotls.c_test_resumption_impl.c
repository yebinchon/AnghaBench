
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_13__ {int member_0; } ;
typedef TYPE_2__ ptls_save_ticket_t ;
struct TYPE_14__ {scalar_t__ id; } ;
typedef TYPE_3__ ptls_key_exchange_algorithm_t ;
struct TYPE_15__ {int member_0; } ;
typedef TYPE_4__ ptls_encrypt_ticket_t ;
struct TYPE_17__ {int ticket_lifetime; int max_early_data_size; TYPE_4__* encrypt_ticket; int * save_ticket; TYPE_1__** key_exchanges; } ;
struct TYPE_16__ {int * base; } ;
struct TYPE_12__ {scalar_t__ id; } ;
struct TYPE_11__ {int require_dhe_on_psk; TYPE_3__** key_exchanges; TYPE_2__* save_ticket; } ;


 int TEST_HANDSHAKE_1RTT ;
 int TEST_HANDSHAKE_2RTT ;
 int TEST_HANDSHAKE_EARLY_DATA ;
 int assert (int) ;
 TYPE_10__* ctx ;
 TYPE_9__* ctx_peer ;
 int ok (int) ;
 int on_copy_ticket ;
 int on_save_ticket ;
 TYPE_5__ ptls_iovec_init (int *,int ) ;
 TYPE_3__ ptls_minicrypto_x25519 ;
 TYPE_5__ saved_ticket ;
 int sc_callcnt ;
 int test_handshake (TYPE_5__,int ,int,int ,int) ;

__attribute__((used)) static void test_resumption_impl(int different_preferred_key_share, int require_client_authentication)
{
    assert(ctx->key_exchanges[0]->id == ctx_peer->key_exchanges[0]->id);
    assert(ctx->key_exchanges[1] == ((void*)0));
    assert(ctx_peer->key_exchanges[1] == ((void*)0));
    assert(ctx->key_exchanges[0]->id != ptls_minicrypto_x25519.id);
    ptls_key_exchange_algorithm_t *different_key_exchanges[] = {&ptls_minicrypto_x25519, ctx->key_exchanges[0], ((void*)0)},
                                  **key_exchanges_orig = ctx->key_exchanges;

    if (different_preferred_key_share)
        ctx->key_exchanges = different_key_exchanges;

    ptls_encrypt_ticket_t et = {on_copy_ticket};
    ptls_save_ticket_t st = {on_save_ticket};

    assert(ctx_peer->ticket_lifetime == 0);
    assert(ctx_peer->max_early_data_size == 0);
    assert(ctx_peer->encrypt_ticket == ((void*)0));
    assert(ctx_peer->save_ticket == ((void*)0));
    saved_ticket = ptls_iovec_init(((void*)0), 0);

    ctx_peer->ticket_lifetime = 86400;
    ctx_peer->max_early_data_size = 8192;
    ctx_peer->encrypt_ticket = &et;
    ctx->save_ticket = &st;

    sc_callcnt = 0;
    test_handshake(saved_ticket, different_preferred_key_share ? TEST_HANDSHAKE_2RTT : TEST_HANDSHAKE_1RTT, 1, 0, 0);
    ok(sc_callcnt == 1);
    ok(saved_ticket.base != ((void*)0));


    test_handshake(saved_ticket, TEST_HANDSHAKE_1RTT, 1, 0, require_client_authentication);
    if (require_client_authentication == 1) {
        ok(sc_callcnt == 3);
    } else {
        ok(sc_callcnt == 1);
    }


    test_handshake(saved_ticket, TEST_HANDSHAKE_EARLY_DATA, 1, 0, require_client_authentication);
    if (require_client_authentication == 1) {
        ok(sc_callcnt == 5);
    } else {
        ok(sc_callcnt == 1);
    }

    ctx->require_dhe_on_psk = 1;


    test_handshake(saved_ticket, TEST_HANDSHAKE_1RTT, 1, 0, require_client_authentication);
    if (require_client_authentication == 1) {
        ok(sc_callcnt == 7);
    } else {
        ok(sc_callcnt == 1);
    }


    test_handshake(saved_ticket, TEST_HANDSHAKE_EARLY_DATA, 1, 0, require_client_authentication);
    if (require_client_authentication == 1) {
        ok(sc_callcnt == 9);
    } else {
        ok(sc_callcnt == 1);
    }

    ctx->require_dhe_on_psk = 0;
    ctx_peer->ticket_lifetime = 0;
    ctx_peer->max_early_data_size = 0;
    ctx_peer->encrypt_ticket = ((void*)0);
    ctx->save_ticket = ((void*)0);
    ctx->key_exchanges = key_exchanges_orig;
}
