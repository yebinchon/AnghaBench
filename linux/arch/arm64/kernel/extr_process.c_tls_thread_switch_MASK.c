#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tp_value; } ;
struct TYPE_4__ {TYPE_1__ uw; } ;
struct task_struct {TYPE_2__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/ * FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  tpidr_el0 ; 
 int /*<<< orphan*/  tpidrro_el0 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct task_struct *next)
{
	FUNC4();

	if (FUNC1(FUNC2(next)))
		FUNC5(next->thread.uw.tp_value, tpidrro_el0);
	else if (!FUNC0())
		FUNC5(0, tpidrro_el0);

	FUNC5(*FUNC3(next), tpidr_el0);
}