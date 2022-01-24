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
struct pt_regs {int dummy; } ;
struct machine_check_event {scalar_t__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCE_EVENT_RELEASE ; 
 scalar_t__ MCE_V1 ; 
 int /*<<< orphan*/  FUNC0 (struct machine_check_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct machine_check_event*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct pt_regs*,struct machine_check_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 

int FUNC5(struct pt_regs *regs)
{
	struct machine_check_event evt;

	if (!FUNC0(&evt, MCE_EVENT_RELEASE))
		return 0;

	/* Print things out */
	if (evt.version != MCE_V1) {
		FUNC2("Machine Check Exception, Unknown event version %d !\n",
		       evt.version);
		return 0;
	}
	FUNC1(&evt, FUNC4(regs), false);

	if (FUNC3(regs, &evt))
		return 1;

	return 0;
}