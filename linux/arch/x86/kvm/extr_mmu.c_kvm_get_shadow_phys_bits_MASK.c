#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int extended_cpuid_level; int x86_phys_bits; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  X86_FEATURE_TME ; 
 TYPE_1__ boot_cpu_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static u8 FUNC3(void)
{
	/*
	 * boot_cpu_data.x86_phys_bits is reduced when MKTME is detected
	 * in CPU detection code, but MKTME treats those reduced bits as
	 * 'keyID' thus they are not reserved bits. Therefore for MKTME
	 * we should still return physical address bits reported by CPUID.
	 */
	if (!FUNC1(X86_FEATURE_TME) ||
	    FUNC0(boot_cpu_data.extended_cpuid_level < 0x80000008))
		return boot_cpu_data.x86_phys_bits;

	return FUNC2(0x80000008) & 0xff;
}