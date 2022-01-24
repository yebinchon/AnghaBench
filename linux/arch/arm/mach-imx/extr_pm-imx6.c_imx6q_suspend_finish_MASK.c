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
struct TYPE_2__ {int /*<<< orphan*/  vbase; } ;
struct imx6_cpu_pm_info {TYPE_1__ l2_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ suspend_ocram_base ; 

__attribute__((used)) static int FUNC4(unsigned long val)
{
	if (!&imx6_suspend_in_ocram_fn) {
		FUNC0();
	} else {
		/*
		 * call low level suspend function in ocram,
		 * as we need to float DDR IO.
		 */
		FUNC3();
		/* check if need to flush internal L2 cache */
		if (!((struct imx6_cpu_pm_info *)
			suspend_ocram_base)->l2_base.vbase)
			FUNC1();
		FUNC2(suspend_ocram_base);
	}

	return 0;
}