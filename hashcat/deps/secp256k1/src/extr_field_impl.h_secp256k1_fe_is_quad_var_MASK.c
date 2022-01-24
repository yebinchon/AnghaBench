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
typedef  int /*<<< orphan*/  secp256k1_num ;
typedef  int /*<<< orphan*/  secp256k1_fe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char const*,int) ; 

__attribute__((used)) static int FUNC5(const secp256k1_fe *a) {
#ifndef USE_NUM_NONE
    unsigned char b[32];
    secp256k1_num n;
    secp256k1_num m;
    /* secp256k1 field prime, value p defined in "Standards for Efficient Cryptography" (SEC2) 2.7.1. */
    static const unsigned char prime[32] = {
        0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
        0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
        0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
        0xFF,0xFF,0xFF,0xFE,0xFF,0xFF,0xFC,0x2F
    };

    secp256k1_fe c = *a;
    FUNC1(&c);
    FUNC0(b, &c);
    FUNC4(&n, b, 32);
    FUNC4(&m, prime, 32);
    return FUNC3(&n, &m) >= 0;
#else
    secp256k1_fe r;
    return secp256k1_fe_sqrt(&r, a);
#endif
}