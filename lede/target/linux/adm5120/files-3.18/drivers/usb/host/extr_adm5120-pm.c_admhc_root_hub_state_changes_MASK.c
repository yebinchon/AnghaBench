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
struct admhcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  int_enable; } ;

/* Variables and functions */
 int ADMHC_INTR_INSM ; 
 int /*<<< orphan*/  FUNC0 (struct admhcd*,int) ; 
 int FUNC1 (struct admhcd*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct admhcd *ahcd, int changed,
		int any_connected)
{
	/* If INSM is enabled, don't poll */
	if (FUNC1(ahcd, &ahcd->regs->int_enable) & ADMHC_INTR_INSM)
		return 0;

	/* If no status changes are pending, enable status-change interrupts */
	if (!changed) {
		FUNC0(ahcd, ADMHC_INTR_INSM);
		return 0;
	}

	return 1;
}