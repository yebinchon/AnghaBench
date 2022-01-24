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
struct timer_list {int /*<<< orphan*/  expires; } ;

/* Variables and functions */
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct timer_list*) ; 

__attribute__((used)) static void FUNC6(struct timer_list *t, unsigned long interval)
{
	unsigned long when = jiffies + interval;
	unsigned long flags;

	FUNC1(flags);

	if (!FUNC5(t) || FUNC4(when, t->expires))
		FUNC2(t, FUNC3(when));

	FUNC0(flags);
}