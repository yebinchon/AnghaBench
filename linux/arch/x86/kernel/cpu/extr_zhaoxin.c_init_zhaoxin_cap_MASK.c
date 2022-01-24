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
typedef  int u32 ;
struct cpuinfo_x86 {int x86; void** x86_capability; } ;

/* Variables and functions */
 int ACE_ENABLED ; 
 int ACE_FCR ; 
 int ACE_PRESENT ; 
 size_t CPUID_C000_0001_EDX ; 
 int /*<<< orphan*/  MSR_ZHAOXIN_FCR57 ; 
 int RNG_ENABLE ; 
 int RNG_ENABLED ; 
 int RNG_PRESENT ; 
 int /*<<< orphan*/  X86_FEATURE_REP_GOOD ; 
 int /*<<< orphan*/  FUNC0 (struct cpuinfo_x86*) ; 
 int FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC7(struct cpuinfo_x86 *c)
{
	u32  lo, hi;

	/* Test for Extended Feature Flags presence */
	if (FUNC1(0xC0000000) >= 0xC0000001) {
		u32 tmp = FUNC2(0xC0000001);

		/* Enable ACE unit, if present and disabled */
		if ((tmp & (ACE_PRESENT | ACE_ENABLED)) == ACE_PRESENT) {
			FUNC4(MSR_ZHAOXIN_FCR57, lo, hi);
			/* Enable ACE unit */
			lo |= ACE_FCR;
			FUNC6(MSR_ZHAOXIN_FCR57, lo, hi);
			FUNC3("CPU: Enabled ACE h/w crypto\n");
		}

		/* Enable RNG unit, if present and disabled */
		if ((tmp & (RNG_PRESENT | RNG_ENABLED)) == RNG_PRESENT) {
			FUNC4(MSR_ZHAOXIN_FCR57, lo, hi);
			/* Enable RNG unit */
			lo |= RNG_ENABLE;
			FUNC6(MSR_ZHAOXIN_FCR57, lo, hi);
			FUNC3("CPU: Enabled h/w RNG\n");
		}

		/*
		 * Store Extended Feature Flags as word 5 of the CPU
		 * capability bit array
		 */
		c->x86_capability[CPUID_C000_0001_EDX] = FUNC2(0xC0000001);
	}

	if (c->x86 >= 0x6)
		FUNC5(c, X86_FEATURE_REP_GOOD);

	FUNC0(c);
}