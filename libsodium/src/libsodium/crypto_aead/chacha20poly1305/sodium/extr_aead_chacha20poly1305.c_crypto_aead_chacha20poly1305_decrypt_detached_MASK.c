#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  unsigned char crypto_onetimeauth_poly1305_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 int crypto_aead_chacha20poly1305_ABYTES ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int,unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned int,unsigned char const*) ; 
 int FUNC7 (unsigned char*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int) ; 

int
FUNC10(unsigned char *m,
                                              unsigned char *nsec,
                                              const unsigned char *c,
                                              unsigned long long clen,
                                              const unsigned char *mac,
                                              const unsigned char *ad,
                                              unsigned long long adlen,
                                              const unsigned char *npub,
                                              const unsigned char *k)
{
    crypto_onetimeauth_poly1305_state state;
    unsigned char                     block0[64U];
    unsigned char                     slen[8U];
    unsigned char                     computed_mac[crypto_aead_chacha20poly1305_ABYTES];
    unsigned long long                mlen;
    int                               ret;

    (void) nsec;
    FUNC5(block0, sizeof block0, npub, k);
    FUNC3(&state, block0);
    FUNC9(block0, sizeof block0);

    FUNC4(&state, ad, adlen);
    FUNC1(slen, (uint64_t) adlen);
    FUNC4(&state, slen, sizeof slen);

    mlen = clen;
    FUNC4(&state, c, mlen);
    FUNC1(slen, (uint64_t) mlen);
    FUNC4(&state, slen, sizeof slen);

    FUNC2(&state, computed_mac);
    FUNC9(&state, sizeof state);

    FUNC0(sizeof computed_mac == 16U);
    ret = FUNC7(computed_mac, mac);
    FUNC9(computed_mac, sizeof computed_mac);
    if (m == NULL) {
        return ret;
    }
    if (ret != 0) {
        FUNC8(m, 0, mlen);
        return -1;
    }
    FUNC6(m, c, mlen, npub, 1U, k);

    return 0;
}