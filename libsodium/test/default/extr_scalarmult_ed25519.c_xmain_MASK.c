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

/* Variables and functions */
 int /*<<< orphan*/  B ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned char*,unsigned char*,unsigned char*) ; 
 scalar_t__ crypto_scalarmult_ed25519_BYTES ; 
 scalar_t__ crypto_scalarmult_ed25519_SCALARBYTES ; 
 int FUNC2 (unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC3 (unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (unsigned char*,unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC6 () ; 
 unsigned char* max_canonical_p ; 
 scalar_t__ FUNC7 (unsigned char*,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned char* non_canonical_invalid_p ; 
 unsigned char* non_canonical_p ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 

int
FUNC14(void)
{
    unsigned char *n, *p, *q, *q2;

    n = (unsigned char *) FUNC13(crypto_scalarmult_ed25519_SCALARBYTES);
    p = (unsigned char *) FUNC13(crypto_scalarmult_ed25519_BYTES);
    q = (unsigned char *) FUNC13(crypto_scalarmult_ed25519_BYTES);
    q2 = (unsigned char *) FUNC13(crypto_scalarmult_ed25519_BYTES);

    FUNC11(n, crypto_scalarmult_ed25519_SCALARBYTES);
    if (FUNC2(q, n) != 0) {
        FUNC10("crypto_scalarmult_ed25519_base() failed\n");
    }
    FUNC8(p, B, crypto_scalarmult_ed25519_BYTES);
    if (FUNC1(q2, n, p) != 0) {
        FUNC10("crypto_scalarmult_ed25519() failed\n");
    }
    if (FUNC7(q, q2, crypto_scalarmult_ed25519_BYTES) != 0) {
        FUNC10("crypto_scalarmult_ed25519_base(n) != crypto_scalarmult_ed25519(n, 9)\n");
    }

    FUNC9(n, 0, crypto_scalarmult_ed25519_SCALARBYTES);
    if (FUNC2(q, n) != -1) {
        FUNC10("crypto_scalarmult_ed25519_base(0) passed\n");
    }
    if (FUNC1(q2, n, p) != -1) {
        FUNC10("crypto_scalarmult_ed25519(0) passed\n");
    }
    if (FUNC5(q2, n, p) != -1) {
        FUNC10("crypto_scalarmult_ed25519_noclamp(0) passed\n");
    }

    n[0] = 1;
    if (FUNC2(q, n) != 0) {
        FUNC10("crypto_scalarmult_ed25519_base() failed\n");
    }
    if (FUNC1(q2, n, p) != 0) {
        FUNC10("crypto_scalarmult_ed25519() failed\n");
    }
    if (FUNC5(q2, n, p) != 0) {
        FUNC10("crypto_scalarmult_ed25519_noclamp() failed\n");
    }

    if (FUNC1(q, n, non_canonical_p) != -1) {
        FUNC10("crypto_scalarmult_ed25519() didn't fail\n");
    }
    if (FUNC1(q, n, non_canonical_invalid_p) != -1) {
        FUNC10("crypto_scalarmult_ed25519() didn't fail\n");
    }
    if (FUNC1(q, n, max_canonical_p) != 0) {
        FUNC10("crypto_scalarmult_ed25519() failed\n");
    }

    n[0] = 9;
    if (FUNC1(q, n, p) != 0) {
        FUNC10("crypto_scalarmult_ed25519() failed\n");
    }
    if (FUNC5(q2, n, p) != 0) {
        FUNC10("crypto_scalarmult_ed25519_noclamp() failed\n");
    }
    if (FUNC7(q, q2, crypto_scalarmult_ed25519_BYTES) == 0) {
        FUNC10("clamping not applied\n");
    }

    n[0] = 9;
    if (FUNC2(q, n) != 0) {
        FUNC10("crypto_scalarmult_ed25519_base() failed\n");
    }
    if (FUNC3(q2, n) != 0) {
        FUNC10("crypto_scalarmult_ed25519_base_noclamp() failed\n");
    }
    if (FUNC7(q, q2, crypto_scalarmult_ed25519_BYTES) == 0) {
        FUNC10("clamping not applied\n");
    }

    n[0] = 8;
    n[31] = 64;
    if (FUNC5(q2, n, p) != 0) {
        FUNC10("crypto_scalarmult_ed25519_noclamp() failed\n");
    }
    if (FUNC7(q, q2, crypto_scalarmult_ed25519_BYTES) != 0) {
        FUNC10("inconsistent clamping\n");
    }

    FUNC9(p, 0, crypto_scalarmult_ed25519_BYTES);
    if (FUNC1(q, n, p) != -1) {
        FUNC10("crypto_scalarmult_ed25519() didn't fail\n");
    }
    if (FUNC5(q, n, p) != -1) {
        FUNC10("crypto_scalarmult_ed25519_noclamp() didn't fail\n");
    }

    n[0] = 8;
    if (FUNC1(q, n, p) != -1) {
        FUNC10("crypto_scalarmult_ed25519() didn't fail\n");
    }
    if (FUNC5(q, n, p) != -1) {
        FUNC10("crypto_scalarmult_ed25519_noclamp() didn't fail\n");
    }

    FUNC12(q2);
    FUNC12(q);
    FUNC12(p);
    FUNC12(n);

    FUNC0(crypto_scalarmult_ed25519_BYTES == FUNC4());
    FUNC0(crypto_scalarmult_ed25519_SCALARBYTES == FUNC6());

    FUNC10("OK\n");

    return 0;
}