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
 int /*<<< orphan*/  CPACF_KMC ; 
 int /*<<< orphan*/  CPACF_KMC_PRNG ; 
 int /*<<< orphan*/  CPACF_PRNO ; 
 int /*<<< orphan*/  CPACF_PRNO_SHA512_DRNG_GEN ; 
 int /*<<< orphan*/  CPACF_PRNO_TRNG ; 
 int PRNG_MODE_SHA512 ; 
 int PRNG_MODE_TDES ; 
 int PRNG_MODE_TRNG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(void)
{
	if (!FUNC0(CPACF_KMC, CPACF_KMC_PRNG)) {
		FUNC1("KASLR disabled: CPU has no PRNG\n");
		return 0;
	}
	if (FUNC0(CPACF_PRNO, CPACF_PRNO_TRNG))
		return PRNG_MODE_TRNG;
	if (FUNC0(CPACF_PRNO, CPACF_PRNO_SHA512_DRNG_GEN))
		return PRNG_MODE_SHA512;
	else
		return PRNG_MODE_TDES;
}