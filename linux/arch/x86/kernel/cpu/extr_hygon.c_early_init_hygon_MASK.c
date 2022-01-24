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
typedef  int /*<<< orphan*/  u32 ;
struct cpuinfo_x86 {int x86_power; int /*<<< orphan*/  microcode; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MSR_AMD64_PATCH_LEVEL ; 
 int /*<<< orphan*/  X86_FEATURE_ACC_POWER ; 
 int /*<<< orphan*/  X86_FEATURE_APIC ; 
 int /*<<< orphan*/  X86_FEATURE_CONSTANT_TSC ; 
 int /*<<< orphan*/  X86_FEATURE_EXTD_APICID ; 
 int /*<<< orphan*/  X86_FEATURE_K8 ; 
 int /*<<< orphan*/  X86_FEATURE_NONSTOP_TSC ; 
 int /*<<< orphan*/  X86_FEATURE_SYSCALL32 ; 
 int /*<<< orphan*/  X86_FEATURE_VMMCALL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct cpuinfo_x86 *c)
{
	u32 dummy;

	FUNC2(c);

	FUNC5(c, X86_FEATURE_K8);

	FUNC4(MSR_AMD64_PATCH_LEVEL, &c->microcode, &dummy);

	/*
	 * c->x86_power is 8000_0007 edx. Bit 8 is TSC runs at constant rate
	 * with P/T states and does not stop in deep C-states
	 */
	if (c->x86_power & (1 << 8)) {
		FUNC5(c, X86_FEATURE_CONSTANT_TSC);
		FUNC5(c, X86_FEATURE_NONSTOP_TSC);
	}

	/* Bit 12 of 8000_0007 edx is accumulated power mechanism. */
	if (c->x86_power & FUNC0(12))
		FUNC5(c, X86_FEATURE_ACC_POWER);

#ifdef CONFIG_X86_64
	set_cpu_cap(c, X86_FEATURE_SYSCALL32);
#endif

#if defined(CONFIG_X86_LOCAL_APIC) && defined(CONFIG_PCI)
	/*
	 * ApicID can always be treated as an 8-bit value for Hygon APIC So, we
	 * can safely set X86_FEATURE_EXTD_APICID unconditionally.
	 */
	if (boot_cpu_has(X86_FEATURE_APIC))
		set_cpu_cap(c, X86_FEATURE_EXTD_APICID);
#endif

	/*
	 * This is only needed to tell the kernel whether to use VMCALL
	 * and VMMCALL.  VMMCALL is never executed except under virt, so
	 * we can set it unconditionally.
	 */
	FUNC5(c, X86_FEATURE_VMMCALL);

	FUNC3(c);
}