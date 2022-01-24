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
typedef  unsigned char crypto_onetimeauth_poly1305_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,unsigned char const*,int /*<<< orphan*/ *) ; 
 unsigned int crypto_onetimeauth_poly1305_KEYBYTES ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,unsigned long long) ; 
 unsigned int crypto_secretbox_ZEROBYTES ; 
 int crypto_stream_salsa20_KEYBYTES ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,unsigned long long,unsigned char const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char const*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int) ; 

int
FUNC10(unsigned char *c, unsigned char *mac,
                          const unsigned char *m,
                          unsigned long long mlen, const unsigned char *n,
                          const unsigned char *k)
{
    crypto_onetimeauth_poly1305_state state;
    unsigned char                     block0[64U];
    unsigned char                     subkey[crypto_stream_salsa20_KEYBYTES];
    unsigned long long                i;
    unsigned long long                mlen0;

    FUNC1(subkey, n, k, NULL);

    if (((uintptr_t) c > (uintptr_t) m &&
         (uintptr_t) c - (uintptr_t) m < mlen) ||
        ((uintptr_t) m > (uintptr_t) c &&
         (uintptr_t) m - (uintptr_t) c < mlen)) { /* LCOV_EXCL_LINE */
        FUNC7(c, m, mlen);
        m = c;
    }
    FUNC8(block0, 0U, crypto_secretbox_ZEROBYTES);
    FUNC0(64U >= crypto_secretbox_ZEROBYTES);
    mlen0 = mlen;
    if (mlen0 > 64U - crypto_secretbox_ZEROBYTES) {
        mlen0 = 64U - crypto_secretbox_ZEROBYTES;
    }
    for (i = 0U; i < mlen0; i++) {
        block0[i + crypto_secretbox_ZEROBYTES] = m[i];
    }
    FUNC5(block0, block0,
                              mlen0 + crypto_secretbox_ZEROBYTES,
                              n + 16, subkey);
    FUNC0(crypto_secretbox_ZEROBYTES >=
                    crypto_onetimeauth_poly1305_KEYBYTES);
    FUNC3(&state, block0);

    for (i = 0U; i < mlen0; i++) {
        c[i] = block0[crypto_secretbox_ZEROBYTES + i];
    }
    FUNC9(block0, sizeof block0);
    if (mlen > mlen0) {
        FUNC6(c + mlen0, m + mlen0, mlen - mlen0,
                                     n + 16, 1U, subkey);
    }
    FUNC9(subkey, sizeof subkey);

    FUNC4(&state, c, mlen);
    FUNC2(&state, mac);
    FUNC9(&state, sizeof state);

    return 0;
}