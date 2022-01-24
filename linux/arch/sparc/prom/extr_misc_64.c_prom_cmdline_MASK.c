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
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
	unsigned long args[3];
	unsigned long flags;

	FUNC1(flags);

#ifdef CONFIG_SMP
	smp_capture();
#endif

	args[0] = (unsigned long) "enter";
	args[1] = 0;
	args[2] = 0;

	FUNC2(args);

#ifdef CONFIG_SMP
	smp_release();
#endif

	FUNC0(flags);
}