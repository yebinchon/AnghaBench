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
struct locomo {int irq_base; scalar_t__ base; } ;
struct irq_data {int irq; } ;

/* Variables and functions */
 scalar_t__ LOCOMO_ICR ; 
 struct locomo* FUNC0 (struct irq_data*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	struct locomo *lchip = FUNC0(d);
	unsigned int r;
	r = FUNC1(lchip->base + LOCOMO_ICR);
	r |= (0x0010 << (d->irq - lchip->irq_base));
	FUNC2(r, lchip->base + LOCOMO_ICR);
}