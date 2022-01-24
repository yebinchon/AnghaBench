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
 int /*<<< orphan*/  FUNC0 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  mce_timer ; 
 struct timer_list* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(unsigned int cpu)
{
	struct timer_list *t = FUNC4(&mce_timer);

	FUNC2();
	FUNC0(t);
	FUNC3(cpu);
	FUNC1(cpu);
	return 0;
}