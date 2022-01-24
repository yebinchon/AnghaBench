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
struct irq_desc {int dummy; } ;
struct irq_bucket {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct irq_bucket** irq_map ; 
 unsigned int FUNC1 (int) ; 
 int FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct irq_desc *desc)
{
	unsigned int eirq;
	struct irq_bucket *p;
	int cpu = FUNC2();

	eirq = FUNC1(cpu);
	p = irq_map[eirq];
	if ((eirq & 0x10) && p && p->irq) /* bit4 tells if IRQ happened */
		FUNC0(p->irq);
}