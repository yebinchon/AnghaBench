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
 int /*<<< orphan*/  c ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,size_t,scalar_t__*,int /*<<< orphan*/ ) ; 
 size_t crypto_secretbox_NONCEBYTES ; 
 size_t crypto_secretbox_ZEROBYTES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__*,int /*<<< orphan*/ ,size_t,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  k ; 
 scalar_t__* m ; 
 scalar_t__* m2 ; 
 scalar_t__* n ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,size_t) ; 

int
FUNC5(void)
{
    size_t mlen;
    size_t i;

    for (mlen = 0; mlen < 1000 && mlen + crypto_secretbox_ZEROBYTES < sizeof m;
         ++mlen) {
        FUNC1(k);
        FUNC4(n, crypto_secretbox_NONCEBYTES);
        FUNC4(m + crypto_secretbox_ZEROBYTES, mlen);
        FUNC0(c, m, mlen + crypto_secretbox_ZEROBYTES, n, k);
        if (FUNC2(m2, c, mlen + crypto_secretbox_ZEROBYTES, n,
                                  k) == 0) {
            for (i = 0; i < mlen + crypto_secretbox_ZEROBYTES; ++i) {
                if (m2[i] != m[i]) {
                    FUNC3("bad decryption\n");
                    break;
                }
            }
        } else {
            FUNC3("ciphertext fails verification\n");
        }
    }
    return 0;
}