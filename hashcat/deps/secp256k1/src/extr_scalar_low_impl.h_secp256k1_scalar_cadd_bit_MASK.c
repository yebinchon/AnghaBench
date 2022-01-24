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
typedef  unsigned int uint32_t ;
typedef  unsigned int secp256k1_scalar ;

/* Variables and functions */
 unsigned int EXHAUSTIVE_TEST_ORDER ; 
 unsigned int UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned int*) ; 

__attribute__((used)) static void FUNC2(secp256k1_scalar *r, unsigned int bit, int flag) {
    if (flag && bit < 32)
        *r += ((uint32_t)1 << bit);
#ifdef VERIFY
    VERIFY_CHECK(bit < 32);
    /* Verify that adding (1 << bit) will not overflow any in-range scalar *r by overflowing the underlying uint32_t. */
    VERIFY_CHECK(((uint32_t)1 << bit) - 1 <= UINT32_MAX - EXHAUSTIVE_TEST_ORDER);
    VERIFY_CHECK(secp256k1_scalar_check_overflow(r) == 0);
#endif
}