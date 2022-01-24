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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  twd_evt ; 
 unsigned long twd_timer_rate ; 

__attribute__((used)) static void FUNC2(void *new_rate)
{
	twd_timer_rate = *((unsigned long *) new_rate);

	FUNC0(FUNC1(twd_evt), twd_timer_rate);
}