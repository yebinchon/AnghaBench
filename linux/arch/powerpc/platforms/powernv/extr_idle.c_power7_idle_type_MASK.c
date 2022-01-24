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
 int /*<<< orphan*/  MSR_IDLE ; 
 int /*<<< orphan*/  MSR_KERNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(unsigned long type)
{
	unsigned long srr1;

	if (!FUNC6())
		return;

	FUNC4(MSR_IDLE);
	FUNC0();
	srr1 = FUNC5(type);
	FUNC1();
	FUNC4(MSR_KERNEL);

	FUNC2();
	FUNC3(srr1);
}