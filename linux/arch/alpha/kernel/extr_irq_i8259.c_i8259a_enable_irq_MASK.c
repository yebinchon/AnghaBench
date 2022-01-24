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
struct irq_data {int irq; } ;

/* Variables and functions */
 int cached_irq_mask ; 
 int /*<<< orphan*/  i8259_irq_lock ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

inline void
FUNC3(struct irq_data *d)
{
	FUNC1(&i8259_irq_lock);
	FUNC0(d->irq, cached_irq_mask &= ~(1 << d->irq));
	FUNC2(&i8259_irq_lock);
}