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
struct eeh_pe {int state; } ;

/* Variables and functions */
 int EEH_PE_RECOVERING ; 
 int FUNC0 (struct eeh_pe*,int) ; 
 int /*<<< orphan*/  eeh_dev_restore_state ; 
 int /*<<< orphan*/  eeh_dev_save_state ; 
 int /*<<< orphan*/  FUNC1 (struct eeh_pe*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct eeh_pe*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct eeh_pe*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct eeh_pe*,int) ; 

int FUNC5(struct eeh_pe *pe)
{
	int ret;

	/* Bail if the PE is being recovered */
	if (pe->state & EEH_PE_RECOVERING)
		return 0;

	/* Put the PE into recovery mode */
	FUNC4(pe, EEH_PE_RECOVERING);

	/* Save states */
	FUNC1(pe, eeh_dev_save_state, NULL);

	/* Issue reset */
	ret = FUNC2(pe, true);
	if (ret) {
		FUNC3(pe, EEH_PE_RECOVERING, true);
		return ret;
	}

	/* Unfreeze the PE */
	ret = FUNC0(pe, true);
	if (ret) {
		FUNC3(pe, EEH_PE_RECOVERING, true);
		return ret;
	}

	/* Restore device state */
	FUNC1(pe, eeh_dev_restore_state, NULL);

	/* Clear recovery mode */
	FUNC3(pe, EEH_PE_RECOVERING, true);

	return 0;
}