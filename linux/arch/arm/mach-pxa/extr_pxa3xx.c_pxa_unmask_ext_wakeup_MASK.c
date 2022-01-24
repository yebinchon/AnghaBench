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
struct irq_data {scalar_t__ irq; } ;

/* Variables and functions */
 scalar_t__ IRQ_WAKEUP0 ; 
 int /*<<< orphan*/  PECR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 

__attribute__((used)) static void FUNC2(struct irq_data *d)
{
	FUNC1(d);
	PECR |= FUNC0(d->irq - IRQ_WAKEUP0);
}