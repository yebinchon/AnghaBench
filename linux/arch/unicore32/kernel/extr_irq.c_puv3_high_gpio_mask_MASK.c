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
struct irq_data {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_GFER ; 
 int /*<<< orphan*/  GPIO_GRER ; 
 unsigned int GPIO_IRQ_mask ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	unsigned int mask = FUNC0(d->irq);

	GPIO_IRQ_mask &= ~mask;

	FUNC2(FUNC1(GPIO_GRER) & ~mask, GPIO_GRER);
	FUNC2(FUNC1(GPIO_GFER) & ~mask, GPIO_GFER);
}