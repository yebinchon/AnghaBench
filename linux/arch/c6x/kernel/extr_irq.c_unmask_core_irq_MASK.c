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
struct irq_data {unsigned int hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  core_irq_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct irq_data *data)
{
	unsigned int prio = data->hwirq;

	FUNC1(&core_irq_lock);
	FUNC0(IER, 1 << prio);
	FUNC2(&core_irq_lock);
}