
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char* k; int nonce; } ;
typedef TYPE_1__ crypto_secretstream_xchacha20poly1305_state ;


 unsigned char* STATE_INONCE (TYPE_1__*) ;
 int _crypto_secretstream_xchacha20poly1305_counter_reset (TYPE_1__*) ;
 int crypto_secretstream_xchacha20poly1305_INONCEBYTES ;
 int crypto_stream_chacha20_ietf_KEYBYTES ;
 int crypto_stream_chacha20_ietf_xor (unsigned char*,unsigned char*,int,int ,unsigned char*) ;

void
crypto_secretstream_xchacha20poly1305_rekey
    (crypto_secretstream_xchacha20poly1305_state *state)
{
    unsigned char new_key_and_inonce[crypto_stream_chacha20_ietf_KEYBYTES +
                                     crypto_secretstream_xchacha20poly1305_INONCEBYTES];
    size_t i;

    for (i = 0U; i < crypto_stream_chacha20_ietf_KEYBYTES; i++) {
        new_key_and_inonce[i] = state->k[i];
    }
    for (i = 0U; i < crypto_secretstream_xchacha20poly1305_INONCEBYTES; i++) {
        new_key_and_inonce[crypto_stream_chacha20_ietf_KEYBYTES + i] =
            STATE_INONCE(state)[i];
    }
    crypto_stream_chacha20_ietf_xor(new_key_and_inonce, new_key_and_inonce,
                                    sizeof new_key_and_inonce,
                                    state->nonce, state->k);
    for (i = 0U; i < crypto_stream_chacha20_ietf_KEYBYTES; i++) {
        state->k[i] = new_key_and_inonce[i];
    }
    for (i = 0U; i < crypto_secretstream_xchacha20poly1305_INONCEBYTES; i++) {
        STATE_INONCE(state)[i] =
            new_key_and_inonce[crypto_stream_chacha20_ietf_KEYBYTES + i];
    }
    _crypto_secretstream_xchacha20poly1305_counter_reset(state);
}
