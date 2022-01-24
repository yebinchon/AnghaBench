#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_6__ {int /*<<< orphan*/  k; int /*<<< orphan*/  nonce; } ;
typedef  TYPE_1__ crypto_secretstream_xchacha20poly1305_state ;
typedef  unsigned char crypto_onetimeauth_poly1305_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char*,scalar_t__) ; 
 unsigned char* _pad0 ; 
 unsigned long long crypto_aead_chacha20poly1305_ietf_MESSAGEBYTES_MAX ; 
 scalar_t__ crypto_onetimeauth_poly1305_BYTES ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char const*,int) ; 
 unsigned long long crypto_secretstream_xchacha20poly1305_ABYTES ; 
 int /*<<< orphan*/  crypto_secretstream_xchacha20poly1305_COUNTERBYTES ; 
 scalar_t__ crypto_secretstream_xchacha20poly1305_INONCEBYTES ; 
 unsigned long long crypto_secretstream_xchacha20poly1305_MESSAGEBYTES_MAX ; 
 unsigned char crypto_secretstream_xchacha20poly1305_TAG_REKEY ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char const*,unsigned long long,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 

int
FUNC16
   (crypto_secretstream_xchacha20poly1305_state *state,
    unsigned char *out, unsigned long long *outlen_p,
    const unsigned char *m, unsigned long long mlen,
    const unsigned char *ad, unsigned long long adlen, unsigned char tag)
{
    crypto_onetimeauth_poly1305_state poly1305_state;
    unsigned char                     block[64U];
    unsigned char                     slen[8U];
    unsigned char                    *c;
    unsigned char                    *mac;

    if (outlen_p != NULL) {
        *outlen_p = 0U;
    }
    FUNC0(crypto_secretstream_xchacha20poly1305_MESSAGEBYTES_MAX
                    <= crypto_aead_chacha20poly1305_ietf_MESSAGEBYTES_MAX);
    if (mlen > crypto_secretstream_xchacha20poly1305_MESSAGEBYTES_MAX) {
        FUNC15();
    }
    FUNC9(block, sizeof block, state->nonce, state->k);
    FUNC6(&poly1305_state, block);
    FUNC14(block, sizeof block);

    FUNC7(&poly1305_state, ad, adlen);
    FUNC7(&poly1305_state, _pad0,
                                       (0x10 - adlen) & 0xf);
    FUNC11(block, 0, sizeof block);
    block[0] = tag;

    FUNC10(block, block, sizeof block,
                                       state->nonce, 1U, state->k);
    FUNC7(&poly1305_state, block, sizeof block);
    out[0] = block[0];

    c = out + (sizeof tag);
    FUNC10(c, m, mlen, state->nonce, 2U, state->k);
    FUNC7(&poly1305_state, c, mlen);
    FUNC7
        (&poly1305_state, _pad0, (0x10 - (sizeof block) + mlen) & 0xf);

    FUNC3(slen, (uint64_t) adlen);
    FUNC7(&poly1305_state, slen, sizeof slen);
    FUNC3(slen, (sizeof block) + mlen);
    FUNC7(&poly1305_state, slen, sizeof slen);

    mac = c + mlen;
    FUNC5(&poly1305_state, mac);
    FUNC14(&poly1305_state, sizeof poly1305_state);

    FUNC0(crypto_onetimeauth_poly1305_BYTES >=
                    crypto_secretstream_xchacha20poly1305_INONCEBYTES);
    FUNC4(FUNC2(state), mac,
            crypto_secretstream_xchacha20poly1305_INONCEBYTES);
    FUNC12(FUNC1(state),
                     crypto_secretstream_xchacha20poly1305_COUNTERBYTES);
    if ((tag & crypto_secretstream_xchacha20poly1305_TAG_REKEY) != 0 ||
        FUNC13(FUNC1(state),
                       crypto_secretstream_xchacha20poly1305_COUNTERBYTES)) {
        FUNC8(state);
    }
    if (outlen_p != NULL) {
        *outlen_p = crypto_secretstream_xchacha20poly1305_ABYTES + mlen;
    }
    return 0;
}