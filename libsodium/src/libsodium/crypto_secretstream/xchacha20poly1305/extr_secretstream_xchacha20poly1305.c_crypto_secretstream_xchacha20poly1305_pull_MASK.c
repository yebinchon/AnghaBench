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
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned char* _pad0 ; 
 int crypto_onetimeauth_poly1305_BYTES ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char const*,int) ; 
 unsigned long long crypto_secretstream_xchacha20poly1305_ABYTES ; 
 int /*<<< orphan*/  crypto_secretstream_xchacha20poly1305_COUNTERBYTES ; 
 int /*<<< orphan*/  crypto_secretstream_xchacha20poly1305_INONCEBYTES ; 
 unsigned long long crypto_secretstream_xchacha20poly1305_MESSAGEBYTES_MAX ; 
 unsigned char crypto_secretstream_xchacha20poly1305_TAG_REKEY ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char const*,unsigned long long,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 

int
FUNC16
   (crypto_secretstream_xchacha20poly1305_state *state,
    unsigned char *m, unsigned long long *mlen_p, unsigned char *tag_p,
    const unsigned char *in, unsigned long long inlen,
    const unsigned char *ad, unsigned long long adlen)
{
    crypto_onetimeauth_poly1305_state poly1305_state;
    unsigned char                     block[64U];
    unsigned char                     slen[8U];
    unsigned char                     mac[crypto_onetimeauth_poly1305_BYTES];
    const unsigned char              *c;
    const unsigned char              *stored_mac;
    unsigned long long                mlen;
    unsigned char                     tag;

    if (mlen_p != NULL) {
        *mlen_p = 0U;
    }
    if (tag_p != NULL) {
        *tag_p = 0xff;
    }
    if (inlen < crypto_secretstream_xchacha20poly1305_ABYTES) {
        return -1;
    }
    mlen = inlen - crypto_secretstream_xchacha20poly1305_ABYTES;
    if (mlen > crypto_secretstream_xchacha20poly1305_MESSAGEBYTES_MAX) {
        FUNC15();
    }
    FUNC8(block, sizeof block, state->nonce, state->k);
    FUNC5(&poly1305_state, block);
    FUNC14(block, sizeof block);

    FUNC6(&poly1305_state, ad, adlen);
    FUNC6(&poly1305_state, _pad0,
                                       (0x10 - adlen) & 0xf);

    FUNC10(block, 0, sizeof block);
    block[0] = in[0];
    FUNC9(block, block, sizeof block,
                                       state->nonce, 1U, state->k);
    tag = block[0];
    block[0] = in[0];
    FUNC6(&poly1305_state, block, sizeof block);

    c = in + (sizeof tag);
    FUNC6(&poly1305_state, c, mlen);
    FUNC6
        (&poly1305_state, _pad0, (0x10 - (sizeof block) + mlen) & 0xf);

    FUNC2(slen, (uint64_t) adlen);
    FUNC6(&poly1305_state, slen, sizeof slen);
    FUNC2(slen, (sizeof block) + mlen);
    FUNC6(&poly1305_state, slen, sizeof slen);

    FUNC4(&poly1305_state, mac);
    FUNC14(&poly1305_state, sizeof poly1305_state);

    stored_mac = c + mlen;
    if (FUNC13(mac, stored_mac, sizeof mac) != 0) {
        FUNC14(mac, sizeof mac);
        return -1;
    }

    FUNC9(m, c, mlen, state->nonce, 2U, state->k);
    FUNC3(FUNC1(state), mac,
            crypto_secretstream_xchacha20poly1305_INONCEBYTES);
    FUNC11(FUNC0(state),
                     crypto_secretstream_xchacha20poly1305_COUNTERBYTES);
    if ((tag & crypto_secretstream_xchacha20poly1305_TAG_REKEY) != 0 ||
        FUNC12(FUNC0(state),
                       crypto_secretstream_xchacha20poly1305_COUNTERBYTES)) {
        FUNC7(state);
    }
    if (mlen_p != NULL) {
        *mlen_p = mlen;
    }
    if (tag_p != NULL) {
        *tag_p = tag;
    }
    return 0;
}