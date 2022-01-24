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
 int /*<<< orphan*/  APIC_DEST_PHYSICAL ; 
 unsigned int APIC_DM_FIXED ; 
 unsigned int APIC_DM_NMI ; 
 int NMI_VECTOR ; 
 int NUMACHIP_LAPIC_BITS ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  x86_cpu_to_apicid ; 

__attribute__((used)) static void FUNC8(int cpu, int vector)
{
	int local_apicid, apicid = FUNC5(x86_cpu_to_apicid, cpu);
	unsigned int dmode;

	FUNC6();
	local_apicid = FUNC1(x86_cpu_to_apicid);

	/* Send via local APIC where non-local part matches */
	if (!((apicid ^ local_apicid) >> NUMACHIP_LAPIC_BITS)) {
		unsigned long flags;

		FUNC3(flags);
		FUNC0(apicid, vector,
			APIC_DEST_PHYSICAL);
		FUNC2(flags);
		FUNC7();
		return;
	}
	FUNC7();

	dmode = (vector == NMI_VECTOR) ? APIC_DM_NMI : APIC_DM_FIXED;
	FUNC4(apicid, dmode | vector);
}