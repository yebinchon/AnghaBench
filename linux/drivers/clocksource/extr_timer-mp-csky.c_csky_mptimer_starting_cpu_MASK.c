#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  cpumask; } ;
struct timer_of {TYPE_1__ clkevt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  csky_mptimer_irq ; 
 int /*<<< orphan*/  csky_to ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct timer_of* FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct timer_of*) ; 

__attribute__((used)) static int FUNC5(unsigned int cpu)
{
	struct timer_of *to = FUNC3(&csky_to, cpu);

	to->clkevt.cpumask = FUNC1(cpu);

	FUNC2(csky_mptimer_irq, 0);

	FUNC0(&to->clkevt, FUNC4(to),
					2, ULONG_MAX);

	return 0;
}