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
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,unsigned char const*) ; 
 int crypto_box_NONCEBYTES ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int crypto_box_SECRETKEYBYTES ; 
 int FUNC1 (unsigned char*,unsigned char const*,unsigned long long,unsigned char*,unsigned char const*,unsigned char*) ; 
 scalar_t__ FUNC2 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int) ; 

int
FUNC5(unsigned char *c, const unsigned char *m,
                unsigned long long mlen, const unsigned char *pk)
{
    unsigned char nonce[crypto_box_NONCEBYTES];
    unsigned char epk[crypto_box_PUBLICKEYBYTES];
    unsigned char esk[crypto_box_SECRETKEYBYTES];
    int           ret;

    if (FUNC2(epk, esk) != 0) {
        return -1; /* LCOV_EXCL_LINE */
    }
    FUNC3(c, epk, crypto_box_PUBLICKEYBYTES);
    FUNC0(nonce, epk, pk);
    ret = FUNC1(c + crypto_box_PUBLICKEYBYTES, m, mlen,
                          nonce, pk, esk);
    FUNC4(esk, sizeof esk);
    FUNC4(epk, sizeof epk);
    FUNC4(nonce, sizeof nonce);

    return ret;
}