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
struct smi_info {int /*<<< orphan*/  si_sm; TYPE_1__* handlers; } ;
typedef  enum si_sm_result { ____Placeholder_si_sm_result } si_sm_result ;
struct TYPE_2__ {int (* event ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int SI_SM_CALL_WITHOUT_DELAY ; 
 int SI_SM_CALL_WITH_DELAY ; 
 int SI_SM_CALL_WITH_TICK_DELAY ; 
 int SI_SM_HOSED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct smi_info *smi_info)
{
	enum si_sm_result     smi_result;

	smi_result = smi_info->handlers->event(smi_info->si_sm, 0);
	for (;;) {
		if (smi_result == SI_SM_CALL_WITH_DELAY ||
		    smi_result == SI_SM_CALL_WITH_TICK_DELAY) {
			FUNC1(1);
			smi_result = smi_info->handlers->event(
				smi_info->si_sm, FUNC0(1));
		} else if (smi_result == SI_SM_CALL_WITHOUT_DELAY) {
			smi_result = smi_info->handlers->event(
				smi_info->si_sm, 0);
		} else
			break;
	}
	if (smi_result == SI_SM_HOSED)
		/*
		 * We couldn't get the state machine to run, so whatever's at
		 * the port is probably not an IPMI SMI interface.
		 */
		return -ENODEV;

	return 0;
}