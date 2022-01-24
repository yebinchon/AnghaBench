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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int crypto_box_BEFORENMBYTES ; 
 scalar_t__ FUNC1 (unsigned char*,unsigned char const*,unsigned char const*) ; 
 int FUNC2 (unsigned char*,unsigned char*,unsigned char const*,unsigned long long,unsigned char const*,unsigned char*) ; 
 int crypto_secretbox_KEYBYTES ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 

int
FUNC4(unsigned char *c, unsigned char *mac,
                    const unsigned char *m, unsigned long long mlen,
                    const unsigned char *n, const unsigned char *pk,
                    const unsigned char *sk)
{
    unsigned char k[crypto_box_BEFORENMBYTES];
    int           ret;

    FUNC0(crypto_box_BEFORENMBYTES >= crypto_secretbox_KEYBYTES);
    if (FUNC1(k, pk, sk) != 0) {
        return -1;
    }
    ret = FUNC2(c, mac, m, mlen, n, k);
    FUNC3(k, sizeof k);

    return ret;
}