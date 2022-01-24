#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct moxtet_irqpos {size_t idx; int /*<<< orphan*/  bit; } ;
struct TYPE_2__ {struct moxtet_irqpos* position; } ;
struct moxtet {int* modules; TYPE_1__ irq; } ;
struct irq_data {size_t hwirq; } ;

/* Variables and functions */
 struct moxtet* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d, struct seq_file *p)
{
	struct moxtet *moxtet = FUNC0(d);
	struct moxtet_irqpos *pos = &moxtet->irq.position[d->hwirq];
	int id;

	id = moxtet->modules[pos->idx];

	FUNC2(p, " moxtet-%s.%i#%i", FUNC1(id), pos->idx,
		   pos->bit);
}