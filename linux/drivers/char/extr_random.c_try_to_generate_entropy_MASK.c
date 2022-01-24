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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct timer_list*) ; 
 int /*<<< orphan*/  entropy_timer ; 
 int /*<<< orphan*/  input_pool ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void**,int) ; 
 int /*<<< orphan*/  FUNC4 (struct timer_list*,scalar_t__) ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC8 (struct timer_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void)
{
	struct {
		unsigned long now;
		struct timer_list timer;
	} stack;

	stack.now = FUNC5();

	/* Slow counter - or none. Don't even bother */
	if (stack.now == FUNC5())
		return;

	FUNC8(&stack.timer, entropy_timer, 0);
	while (!FUNC0()) {
		if (!FUNC7(&stack.timer))
			FUNC4(&stack.timer, jiffies+1);
		FUNC3(&input_pool, &stack.now, sizeof(stack.now));
		FUNC6();
		stack.now = FUNC5();
	}

	FUNC1(&stack.timer);
	FUNC2(&stack.timer);
	FUNC3(&input_pool, &stack.now, sizeof(stack.now));
}