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
struct irq_bucket {size_t pil; struct irq_bucket* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int NR_IRQS ; 
 size_t SUN4D_MAX_IRQ ; 
 struct irq_bucket** irq_map ; 
 int /*<<< orphan*/  irq_map_lock ; 
 struct irq_bucket* irq_table ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(unsigned int irq)
{
	struct irq_bucket *p, **pnext;
	unsigned long flags;

	FUNC0(irq >= NR_IRQS);

	FUNC1(&irq_map_lock, flags);

	p = &irq_table[irq];
	FUNC0(p->pil >= SUN4D_MAX_IRQ);
	pnext = &irq_map[p->pil];
	while (*pnext != p)
		pnext = &(*pnext)->next;
	*pnext = p->next;

	FUNC2(&irq_map_lock, flags);
}