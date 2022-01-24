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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int LS1X_IRQ_BASE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	unsigned int bit = (d->irq - LS1X_IRQ_BASE) & 0x1f;
	unsigned int n = (d->irq - LS1X_IRQ_BASE) >> 5;

	FUNC2(FUNC1(FUNC0(n))
			& ~(1 << bit), FUNC0(n));
}