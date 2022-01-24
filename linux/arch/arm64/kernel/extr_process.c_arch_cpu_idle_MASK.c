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
 int PWR_EVENT_EXIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	/*
	 * This should do all the clock switching and wait for interrupt
	 * tricks
	 */
	FUNC3(1, FUNC2());
	FUNC0();
	FUNC1();
	FUNC3(PWR_EVENT_EXIT, FUNC2());
}