#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* io_cleanup ) (TYPE_2__*) ;int /*<<< orphan*/  (* addr_source_cleanup ) (TYPE_2__*) ;int /*<<< orphan*/  (* irq_cleanup ) (TYPE_2__*) ;scalar_t__ dev; } ;
struct smi_info {int dev_group_added; int interrupt_disabled; scalar_t__ si_state; int /*<<< orphan*/ * intf; int /*<<< orphan*/ * si_sm; TYPE_2__ io; TYPE_1__* handlers; scalar_t__ curr_msg; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* cleanup ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ SI_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct smi_info*) ; 
 int /*<<< orphan*/  ipmi_si_dev_attr_group ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct smi_info*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct smi_info*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(void *send_info)
{
	struct smi_info *smi_info = send_info;

	if (smi_info->dev_group_added) {
		FUNC1(smi_info->io.dev, &ipmi_si_dev_attr_group);
		smi_info->dev_group_added = false;
	}
	if (smi_info->io.dev)
		FUNC0(smi_info->io.dev, NULL);

	/*
	 * Make sure that interrupts, the timer and the thread are
	 * stopped and will not run again.
	 */
	smi_info->interrupt_disabled = true;
	if (smi_info->io.irq_cleanup) {
		smi_info->io.irq_cleanup(&smi_info->io);
		smi_info->io.irq_cleanup = NULL;
	}
	FUNC6(smi_info);

	/*
	 * Wait until we know that we are out of any interrupt
	 * handlers might have been running before we freed the
	 * interrupt.
	 */
	FUNC11();

	/*
	 * Timeouts are stopped, now make sure the interrupts are off
	 * in the BMC.  Note that timers and CPU interrupts are off,
	 * so no need for locks.
	 */
	while (smi_info->curr_msg || (smi_info->si_state != SI_NORMAL)) {
		FUNC4(smi_info);
		FUNC5(1);
	}
	if (smi_info->handlers)
		FUNC2(smi_info);
	while (smi_info->curr_msg || (smi_info->si_state != SI_NORMAL)) {
		FUNC4(smi_info);
		FUNC5(1);
	}
	if (smi_info->handlers)
		smi_info->handlers->cleanup(smi_info->si_sm);

	if (smi_info->io.addr_source_cleanup) {
		smi_info->io.addr_source_cleanup(&smi_info->io);
		smi_info->io.addr_source_cleanup = NULL;
	}
	if (smi_info->io.io_cleanup) {
		smi_info->io.io_cleanup(&smi_info->io);
		smi_info->io.io_cleanup = NULL;
	}

	FUNC3(smi_info->si_sm);
	smi_info->si_sm = NULL;

	smi_info->intf = NULL;
}