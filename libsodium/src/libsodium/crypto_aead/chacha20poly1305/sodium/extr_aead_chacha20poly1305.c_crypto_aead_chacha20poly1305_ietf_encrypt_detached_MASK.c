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
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ) ; 
 unsigned char* _pad0 ; 
 unsigned long long crypto_aead_chacha20poly1305_ietf_ABYTES ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned int,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 

int
FUNC7(unsigned char *c,
                                                   unsigned char *mac,
                                                   unsigned long long *maclen_p,
                                                   const unsigned char *m,
                                                   unsigned long long mlen,
                                                   const unsigned char *ad,
                                                   unsigned long long adlen,
                                                   const unsigned char *nsec,
                                                   const unsigned char *npub,
                                                   const unsigned char *k)
{
    crypto_onetimeauth_poly1305_state state;
    unsigned char                     block0[64U];
    unsigned char                     slen[8U];

    (void) nsec;
    FUNC4(block0, sizeof block0, npub, k);
    FUNC2(&state, block0);
    FUNC6(block0, sizeof block0);

    FUNC3(&state, ad, adlen);
    FUNC3(&state, _pad0, (0x10 - adlen) & 0xf);

    FUNC5(c, m, mlen, npub, 1U, k);

    FUNC3(&state, c, mlen);
    FUNC3(&state, _pad0, (0x10 - mlen) & 0xf);

    FUNC0(slen, (uint64_t) adlen);
    FUNC3(&state, slen, sizeof slen);

    FUNC0(slen, (uint64_t) mlen);
    FUNC3(&state, slen, sizeof slen);

    FUNC1(&state, mac);
    FUNC6(&state, sizeof state);

    if (maclen_p != NULL) {
        *maclen_p = crypto_aead_chacha20poly1305_ietf_ABYTES;
    }
    return 0;
}