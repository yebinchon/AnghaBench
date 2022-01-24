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
struct pt_regs {int dummy; } ;
struct irq_bucket {int /*<<< orphan*/  irq; struct irq_bucket* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct irq_bucket** irq_map ; 
 struct pt_regs* FUNC4 (struct pt_regs*) ; 

void FUNC5(unsigned int pil, struct pt_regs *regs)
{
	struct pt_regs *old_regs;
	struct irq_bucket *p;

	FUNC0(pil > 15);
	old_regs = FUNC4(regs);
	FUNC2();

	p = irq_map[pil];
	while (p) {
		struct irq_bucket *next = p->next;

		FUNC1(p->irq);
		p = next;
	}
	FUNC3();
	FUNC4(old_regs);
}