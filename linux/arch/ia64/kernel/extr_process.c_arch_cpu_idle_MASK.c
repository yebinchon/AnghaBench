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
 void FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void FUNC5 (int) ; 
 void FUNC6 (int) ; 

void FUNC7(void)
{
	void (*mark_idle)(int) = ia64_mark_idle;

#ifdef CONFIG_SMP
	min_xtp();
#endif
	FUNC3();
	if (mark_idle)
		(*mark_idle)(1);

	FUNC4();

	if (mark_idle)
		(*mark_idle)(0);
#ifdef CONFIG_SMP
	normal_xtp();
#endif
}