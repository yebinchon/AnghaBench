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
typedef  int u8 ;
typedef  int u16 ;
struct xive_cpu {int pending_prio; int cppr; } ;

/* Variables and functions */
#define  TM_QW3_NSR_HE_LSI 131 
#define  TM_QW3_NSR_HE_NONE 130 
#define  TM_QW3_NSR_HE_PHYS 129 
#define  TM_QW3_NSR_HE_POOL 128 
 scalar_t__ TM_SPC_ACK_HV_REG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ xive_tima ; 

__attribute__((used)) static void FUNC5(struct xive_cpu *xc)
{
	u8 he, cppr;
	u16 ack;

	/* Perform the acknowledge hypervisor to register cycle */
	ack = FUNC1(FUNC0(xive_tima + TM_SPC_ACK_HV_REG));

	/* Synchronize subsequent queue accesses */
	FUNC2();

	/*
	 * Grab the CPPR and the "HE" field which indicates the source
	 * of the hypervisor interrupt (if any)
	 */
	cppr = ack & 0xff;
	he = (ack >> 8) >> 6;
	switch(he) {
	case TM_QW3_NSR_HE_NONE: /* Nothing to see here */
		break;
	case TM_QW3_NSR_HE_PHYS: /* Physical thread interrupt */
		if (cppr == 0xff)
			return;
		/* Mark the priority pending */
		xc->pending_prio |= 1 << cppr;

		/*
		 * A new interrupt should never have a CPPR less favored
		 * than our current one.
		 */
		if (cppr >= xc->cppr)
			FUNC3("CPU %d odd ack CPPR, got %d at %d\n",
			       FUNC4(), cppr, xc->cppr);

		/* Update our idea of what the CPPR is */
		xc->cppr = cppr;
		break;
	case TM_QW3_NSR_HE_POOL: /* HV Pool interrupt (unused) */
	case TM_QW3_NSR_HE_LSI:  /* Legacy FW LSI (unused) */
		FUNC3("CPU %d got unexpected interrupt type HE=%d\n",
		       FUNC4(), he);
		return;
	}
}