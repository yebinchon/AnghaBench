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
struct eeh_pe {int addr; TYPE_1__* phb; } ;
struct TYPE_2__ {int global_number; } ;

/* Variables and functions */
 int EEH_PE_CFG_BLOCKED ; 
 int EEH_PE_RESET ; 
 int EEH_RESET_DEACTIVATE ; 
 int EEH_RESET_FUNDAMENTAL ; 
 int EEH_RESET_HOT ; 
 int EIO ; 
 int ENOTRECOVERABLE ; 
 int /*<<< orphan*/  PCI_BUS_RESET_WAIT_MSEC ; 
 int /*<<< orphan*/  FUNC0 (struct eeh_pe*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct eeh_pe*) ; 
 int FUNC2 (struct eeh_pe*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct eeh_pe*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct eeh_pe*,int) ; 
 int /*<<< orphan*/  eeh_set_dev_freset ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct eeh_pe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,...) ; 

int FUNC8(struct eeh_pe *pe, bool include_passed)
{
	int reset_state = (EEH_PE_RESET | EEH_PE_CFG_BLOCKED);
	int type = EEH_RESET_HOT;
	unsigned int freset = 0;
	int i, state = 0, ret;

	/*
	 * Determine the type of reset to perform - hot or fundamental.
	 * Hot reset is the default operation, unless any device under the
	 * PE requires a fundamental reset.
	 */
	FUNC0(pe, eeh_set_dev_freset, &freset);

	if (freset)
		type = EEH_RESET_FUNDAMENTAL;

	/* Mark the PE as in reset state and block config space accesses */
	FUNC4(pe, reset_state);

	/* Make three attempts at resetting the bus */
	for (i = 0; i < 3; i++) {
		ret = FUNC2(pe, type, include_passed);
		if (!ret)
			ret = FUNC2(pe, EEH_RESET_DEACTIVATE,
					   include_passed);
		if (ret) {
			ret = -EIO;
			FUNC7("EEH: Failure %d resetting PHB#%x-PE#%x (attempt %d)\n\n",
				state, pe->phb->global_number, pe->addr, i + 1);
			continue;
		}
		if (i)
			FUNC7("EEH: PHB#%x-PE#%x: Successful reset (attempt %d)\n",
				pe->phb->global_number, pe->addr, i + 1);

		/* Wait until the PE is in a functioning state */
		state = FUNC6(pe, PCI_BUS_RESET_WAIT_MSEC);
		if (state < 0) {
			FUNC7("EEH: Unrecoverable slot failure on PHB#%x-PE#%x",
				pe->phb->global_number, pe->addr);
			ret = -ENOTRECOVERABLE;
			break;
		}
		if (FUNC5(state))
			break;
		else
			FUNC7("EEH: PHB#%x-PE#%x: Slot inactive after reset: 0x%x (attempt %d)\n",
				pe->phb->global_number, pe->addr, state, i + 1);
	}

	/* Resetting the PE may have unfrozen child PEs. If those PEs have been
	 * (potentially) passed through to a guest, re-freeze them:
	 */
	if (!include_passed)
		FUNC1(pe);

	FUNC3(pe, reset_state, true);
	return ret;
}