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
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long N_DRIVE ; 
 int FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 
 struct timer_list* motor_off_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	unsigned long nr = t - motor_off_timer;
	unsigned char mask = ~(0x10 << FUNC1(nr));

	if (FUNC2(nr >= N_DRIVE))
		return;

	FUNC3(FUNC0(nr), mask, 0);
}