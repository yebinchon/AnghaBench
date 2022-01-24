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
struct ia64_mca_notify_die {int* monarch_cpu; int /*<<< orphan*/ * sos; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/ * imi_rendez_checkin; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIE_MCA_RENDZVOUS_ENTER ; 
 int /*<<< orphan*/  DIE_MCA_RENDZVOUS_LEAVE ; 
 int /*<<< orphan*/  DIE_MCA_RENDZVOUS_PROCESS ; 
 int /*<<< orphan*/  IA64_MCA_RENDEZ_CHECKIN_DONE ; 
 int /*<<< orphan*/  IA64_MCA_RENDEZ_CHECKIN_NOTDONE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ ia64_mc_info ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int monarch_cpu ; 
 int FUNC6 () ; 

__attribute__((used)) static irqreturn_t
FUNC7(int rendez_irq, void *arg)
{
	unsigned long flags;
	int cpu = FUNC6();
	struct ia64_mca_notify_die nd =
		{ .sos = NULL, .monarch_cpu = &monarch_cpu };

	/* Mask all interrupts */
	FUNC5(flags);

	FUNC0(DIE_MCA_RENDZVOUS_ENTER, FUNC2(), (long)&nd, 1);

	ia64_mc_info.imi_rendez_checkin[cpu] = IA64_MCA_RENDEZ_CHECKIN_DONE;
	/* Register with the SAL monarch that the slave has
	 * reached SAL
	 */
	FUNC3();

	FUNC0(DIE_MCA_RENDZVOUS_PROCESS, FUNC2(), (long)&nd, 1);

	/* Wait for the monarch cpu to exit. */
	while (monarch_cpu != -1)
	       FUNC1();	/* spin until monarch leaves */

	FUNC0(DIE_MCA_RENDZVOUS_LEAVE, FUNC2(), (long)&nd, 1);

	ia64_mc_info.imi_rendez_checkin[cpu] = IA64_MCA_RENDEZ_CHECKIN_NOTDONE;
	/* Enable all interrupts */
	FUNC4(flags);
	return IRQ_HANDLED;
}