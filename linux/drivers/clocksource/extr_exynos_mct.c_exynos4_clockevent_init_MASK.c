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
struct TYPE_3__ {int /*<<< orphan*/  cpumask; } ;

/* Variables and functions */
 size_t MCT_G0_IRQ ; 
 int /*<<< orphan*/  clk_rate ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ mct_comp_device ; 
 int /*<<< orphan*/  mct_comp_event_irq ; 
 int /*<<< orphan*/ * mct_irqs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void)
{
	mct_comp_device.cpumask = FUNC1(0);
	FUNC0(&mct_comp_device, clk_rate,
					0xf, 0xffffffff);
	FUNC2(mct_irqs[MCT_G0_IRQ], &mct_comp_event_irq);

	return 0;
}