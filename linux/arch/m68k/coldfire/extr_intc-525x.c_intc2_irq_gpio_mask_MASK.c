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
typedef  int u32 ;
struct irq_data {int irq; } ;

/* Variables and functions */
 int IRQ_TYPE_EDGE_FALLING ; 
 int IRQ_TYPE_EDGE_RISING ; 
 int /*<<< orphan*/  MCFSIM2_GPIOINTENABLE ; 
 int MCF_IRQ_GPIO0 ; 
 int FUNC0 (struct irq_data*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	u32 imr = FUNC1(MCFSIM2_GPIOINTENABLE);
	u32 type = FUNC0(d);
	int irq = d->irq - MCF_IRQ_GPIO0;

	if (type & IRQ_TYPE_EDGE_RISING)
		imr &= ~(0x001 << irq);
	if (type & IRQ_TYPE_EDGE_FALLING)
		imr &= ~(0x100 << irq);
	FUNC2(imr, MCFSIM2_GPIOINTENABLE);
}