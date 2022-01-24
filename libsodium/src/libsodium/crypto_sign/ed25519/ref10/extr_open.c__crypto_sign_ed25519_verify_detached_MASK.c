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
typedef  int /*<<< orphan*/  ge25519_p3 ;
typedef  int /*<<< orphan*/  ge25519_p2 ;
typedef  int /*<<< orphan*/  crypto_hash_sha512_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,unsigned long long) ; 
 int FUNC3 (unsigned char*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *,unsigned char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned char const*) ; 
 scalar_t__ FUNC6 (unsigned char const*) ; 
 scalar_t__ FUNC7 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*) ; 
 int FUNC11 (unsigned char const*,unsigned char*,int) ; 

int
FUNC12(const unsigned char *sig,
                                     const unsigned char *m,
                                     unsigned long long   mlen,
                                     const unsigned char *pk,
                                     int prehashed)
{
    crypto_hash_sha512_state hs;
    unsigned char            h[64];
    unsigned char            rcheck[32];
    ge25519_p3               A;
    ge25519_p2               R;

#ifdef ED25519_COMPAT
    if (sig[63] & 224) {
        return -1;
    }
#else
    if (sig[63] & 240 &&
        FUNC9(sig + 32) == 0) {
        return -1;
    }
    if (FUNC6(sig) != 0) {
        return -1;
    }
    if (FUNC7(pk) == 0 ||
        FUNC6(pk) != 0) {
        return -1;
    }
#endif
    if (FUNC5(&A, pk) != 0) {
        return -1;
    }
    FUNC0(&hs, prehashed);
    FUNC2(&hs, sig, 32);
    FUNC2(&hs, pk, 32);
    FUNC2(&hs, m, mlen);
    FUNC1(&hs, h);
    FUNC10(h);

    FUNC4(&R, h, &A, sig + 32);
    FUNC8(rcheck, &R);

    return FUNC3(rcheck, sig) | (-(rcheck == sig)) |
           FUNC11(sig, rcheck, 32);
}