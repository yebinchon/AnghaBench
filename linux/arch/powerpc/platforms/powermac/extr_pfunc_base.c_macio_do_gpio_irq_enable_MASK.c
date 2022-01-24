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
struct pmf_function {TYPE_1__* node; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  macio_gpio_irq ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pmf_function*) ; 

__attribute__((used)) static int FUNC2(struct pmf_function *func)
{
	unsigned int irq = FUNC0(func->node, 0);
	if (!irq)
		return -EINVAL;
	return FUNC1(irq, macio_gpio_irq, 0, func->node->name, func);
}