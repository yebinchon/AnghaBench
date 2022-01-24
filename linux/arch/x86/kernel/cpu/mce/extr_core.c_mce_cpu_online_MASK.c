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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct timer_list*) ; 
 int FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  mce_timer ; 
 struct timer_list* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(unsigned int cpu)
{
	struct timer_list *t = FUNC5(&mce_timer);
	int ret;

	FUNC0(cpu);

	ret = FUNC4(cpu);
	if (ret) {
		FUNC1(cpu);
		return ret;
	}
	FUNC2();
	FUNC3(t);
	return 0;
}