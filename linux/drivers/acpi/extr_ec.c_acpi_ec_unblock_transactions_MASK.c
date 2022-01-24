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
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 scalar_t__ first_ec ; 

void FUNC1(void)
{
	/*
	 * Allow transactions to happen again (this function is called from
	 * atomic context during wakeup, so we don't need to acquire the mutex).
	 */
	if (first_ec)
		FUNC0(first_ec, true);
}