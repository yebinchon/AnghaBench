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
struct irq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANAGED_IRQ_SHUTDOWN_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (struct irq_data*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct irq_data *irqd)
{
	unsigned int cpu = FUNC1(cpu_online_mask);

	FUNC0(irqd, MANAGED_IRQ_SHUTDOWN_VECTOR, cpu);
}