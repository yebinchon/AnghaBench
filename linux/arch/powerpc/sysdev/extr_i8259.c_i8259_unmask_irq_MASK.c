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
 int cached_21 ; 
 int cached_A1 ; 
 int /*<<< orphan*/  i8259_lock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	unsigned long flags;

	FUNC1("i8259_unmask_irq(%d)\n", d->irq);

	FUNC2(&i8259_lock, flags);
	if (d->irq < 8)
		cached_21 &= ~(1 << d->irq);
	else
		cached_A1 &= ~(1 << (d->irq-8));
	FUNC0(d->irq);
	FUNC3(&i8259_lock, flags);
}