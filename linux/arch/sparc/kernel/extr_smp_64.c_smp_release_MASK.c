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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ penguins_are_doing_time ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smp_capture_depth ; 
 int /*<<< orphan*/  smp_capture_registry ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
	if (FUNC1(&smp_capture_depth)) {
#ifdef CAPTURE_DEBUG
		printk("CPU[%d]: Giving pardon to "
		       "imprisoned penguins\n",
		       smp_processor_id());
#endif
		penguins_are_doing_time = 0;
		FUNC2("#StoreLoad");
		FUNC0(&smp_capture_registry);
	}
}