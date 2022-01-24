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

/* Variables and functions */
 unsigned int APIC_DM_REMRD ; 
 int /*<<< orphan*/  APIC_ICR ; 
 int APIC_ICR_RR_INPROG ; 
 int APIC_ICR_RR_MASK ; 
#define  APIC_ICR_RR_VALID 128 
 int APIC_ID ; 
 int APIC_LVR ; 
 int /*<<< orphan*/  APIC_RRR ; 
 int APIC_SPIV ; 
 unsigned int FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(int apicid)
{
	unsigned i, regs[] = { APIC_ID >> 4, APIC_LVR >> 4, APIC_SPIV >> 4 };
	const char * const names[] = { "ID", "VERSION", "SPIV" };
	int timeout;
	u32 status;

	FUNC4("Inquiring remote APIC 0x%x...\n", apicid);

	for (i = 0; i < FUNC0(regs); i++) {
		FUNC4("... APIC 0x%x %s: ", apicid, names[i]);

		/*
		 * Wait for idle.
		 */
		status = FUNC5();
		if (status)
			FUNC3("a previous APIC delivery may have failed\n");

		FUNC1(APIC_DM_REMRD | regs[i], apicid);

		timeout = 0;
		do {
			FUNC6(100);
			status = FUNC2(APIC_ICR) & APIC_ICR_RR_MASK;
		} while (status == APIC_ICR_RR_INPROG && timeout++ < 1000);

		switch (status) {
		case APIC_ICR_RR_VALID:
			status = FUNC2(APIC_RRR);
			FUNC3("%08x\n", status);
			break;
		default:
			FUNC3("failed\n");
		}
	}
}