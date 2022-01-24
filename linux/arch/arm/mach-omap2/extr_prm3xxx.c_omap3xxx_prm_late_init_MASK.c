#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device_node {int dummy; } ;
struct TYPE_3__ {int irq; int /*<<< orphan*/  reconfigure_io_chain; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPROBE_DEFER ; 
 int PRM_HAS_IO_WAKEUP ; 
 struct device_node* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  omap3430_pre_es3_1_reconfigure_io_chain ; 
 scalar_t__ FUNC2 () ; 
 TYPE_1__ omap3_prcm_irq_setup ; 
 int /*<<< orphan*/  omap3_prm_dt_match_table ; 
 int /*<<< orphan*/  omap3_prm_reconfigure_io_chain ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int prm_features ; 

__attribute__((used)) static int FUNC6(void)
{
	struct device_node *np;
	int irq_num;

	if (!(prm_features & PRM_HAS_IO_WAKEUP))
		return 0;

	if (FUNC2())
		omap3_prcm_irq_setup.reconfigure_io_chain =
			omap3_prm_reconfigure_io_chain;
	else
		omap3_prcm_irq_setup.reconfigure_io_chain =
			omap3430_pre_es3_1_reconfigure_io_chain;

	np = FUNC0(NULL, omap3_prm_dt_match_table);
	if (!np) {
		FUNC5("PRM: no device tree node for interrupt?\n");

		return -ENODEV;
	}

	irq_num = FUNC1(np, 0);
	if (irq_num == -EPROBE_DEFER)
		return irq_num;

	omap3_prcm_irq_setup.irq = irq_num;

	FUNC3();

	return FUNC4(&omap3_prcm_irq_setup);
}