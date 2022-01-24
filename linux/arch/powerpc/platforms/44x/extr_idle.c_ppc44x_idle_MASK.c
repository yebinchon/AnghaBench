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
 unsigned long MSR_CE ; 
 unsigned long MSR_DE ; 
 unsigned long MSR_EE ; 
 unsigned long MSR_WE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static void FUNC3(void)
{
	unsigned long msr_save;

	msr_save = FUNC1();
	/* set wait state MSR */
	FUNC2(msr_save|MSR_WE|MSR_EE|MSR_CE|MSR_DE);
	FUNC0();
	/* return to initial state */
	FUNC2(msr_save);
	FUNC0();
}