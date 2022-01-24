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
struct cpuinfo_x86 {int cpuid_level; int* x86_capability; int extended_cpuid_level; int x86_power; } ;

/* Variables and functions */
 size_t CPUID_1_ECX ; 
 size_t CPUID_1_EDX ; 
 size_t CPUID_6_EAX ; 
 size_t CPUID_7_0_EBX ; 
 size_t CPUID_7_1_EAX ; 
 size_t CPUID_7_ECX ; 
 size_t CPUID_7_EDX ; 
 size_t CPUID_8000_0001_ECX ; 
 size_t CPUID_8000_0001_EDX ; 
 size_t CPUID_8000_0007_EBX ; 
 size_t CPUID_8000_0008_EBX ; 
 size_t CPUID_8000_000A_EDX ; 
 size_t CPUID_D_1_EAX ; 
 int /*<<< orphan*/  FUNC0 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC1 (int,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int*,int*,int*,int*) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC7 (struct cpuinfo_x86*) ; 

void FUNC8(struct cpuinfo_x86 *c)
{
	u32 eax, ebx, ecx, edx;

	/* Intel-defined flags: level 0x00000001 */
	if (c->cpuid_level >= 0x00000001) {
		FUNC1(0x00000001, &eax, &ebx, &ecx, &edx);

		c->x86_capability[CPUID_1_ECX] = ecx;
		c->x86_capability[CPUID_1_EDX] = edx;
	}

	/* Thermal and Power Management Leaf: level 0x00000006 (eax) */
	if (c->cpuid_level >= 0x00000006)
		c->x86_capability[CPUID_6_EAX] = FUNC3(0x00000006);

	/* Additional Intel-defined flags: level 0x00000007 */
	if (c->cpuid_level >= 0x00000007) {
		FUNC2(0x00000007, 0, &eax, &ebx, &ecx, &edx);
		c->x86_capability[CPUID_7_0_EBX] = ebx;
		c->x86_capability[CPUID_7_ECX] = ecx;
		c->x86_capability[CPUID_7_EDX] = edx;

		/* Check valid sub-leaf index before accessing it */
		if (eax >= 1) {
			FUNC2(0x00000007, 1, &eax, &ebx, &ecx, &edx);
			c->x86_capability[CPUID_7_1_EAX] = eax;
		}
	}

	/* Extended state features: level 0x0000000d */
	if (c->cpuid_level >= 0x0000000d) {
		FUNC2(0x0000000d, 1, &eax, &ebx, &ecx, &edx);

		c->x86_capability[CPUID_D_1_EAX] = eax;
	}

	/* AMD-defined flags: level 0x80000001 */
	eax = FUNC3(0x80000000);
	c->extended_cpuid_level = eax;

	if ((eax & 0xffff0000) == 0x80000000) {
		if (eax >= 0x80000001) {
			FUNC1(0x80000001, &eax, &ebx, &ecx, &edx);

			c->x86_capability[CPUID_8000_0001_ECX] = ecx;
			c->x86_capability[CPUID_8000_0001_EDX] = edx;
		}
	}

	if (c->extended_cpuid_level >= 0x80000007) {
		FUNC1(0x80000007, &eax, &ebx, &ecx, &edx);

		c->x86_capability[CPUID_8000_0007_EBX] = ebx;
		c->x86_power = edx;
	}

	if (c->extended_cpuid_level >= 0x80000008) {
		FUNC1(0x80000008, &eax, &ebx, &ecx, &edx);
		c->x86_capability[CPUID_8000_0008_EBX] = ebx;
	}

	if (c->extended_cpuid_level >= 0x8000000a)
		c->x86_capability[CPUID_8000_000A_EDX] = FUNC4(0x8000000a);

	FUNC6(c);
	FUNC7(c);
	FUNC5(c);

	/*
	 * Clear/Set all flags overridden by options, after probe.
	 * This needs to happen each time we re-probe, which may happen
	 * several times during CPU initialization.
	 */
	FUNC0(c);
}