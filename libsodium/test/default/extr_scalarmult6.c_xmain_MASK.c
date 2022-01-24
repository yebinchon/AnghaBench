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
 int /*<<< orphan*/  alicepk_ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bobsk_ ; 
 int FUNC1 (unsigned char*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  crypto_scalarmult_BYTES ; 
 int /*<<< orphan*/  crypto_scalarmult_SCALARBYTES ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(void)
{
    unsigned char *k;
    unsigned char *bobsk;
    unsigned char *alicepk;
    int            i;
    int            ret;

    k       = (unsigned char *) FUNC5(crypto_scalarmult_BYTES);
    bobsk   = (unsigned char *) FUNC5(crypto_scalarmult_SCALARBYTES);
    alicepk = (unsigned char *) FUNC5(crypto_scalarmult_SCALARBYTES);
    FUNC0(k != NULL && bobsk != NULL && alicepk != NULL);

    FUNC2(bobsk, bobsk_, crypto_scalarmult_SCALARBYTES);
    FUNC2(alicepk, alicepk_, crypto_scalarmult_SCALARBYTES);

    ret = FUNC1(k, bobsk, alicepk);
    FUNC0(ret == 0);

    FUNC4(alicepk);
    FUNC4(bobsk);

    for (i = 0; i < 32; ++i) {
        if (i > 0) {
            FUNC3(",");
        } else {
            FUNC3(" ");
        }
        FUNC3("0x%02x", (unsigned int) k[i]);
        if (i % 8 == 7) {
            FUNC3("\n");
        }
    }
    FUNC4(k);

    return 0;
}