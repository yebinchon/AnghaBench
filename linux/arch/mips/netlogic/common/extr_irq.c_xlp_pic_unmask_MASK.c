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
struct nlm_pic_irq {int /*<<< orphan*/  irt; TYPE_1__* node; int /*<<< orphan*/  picirq; int /*<<< orphan*/  (* extra_ack ) (struct irq_data*) ;} ;
struct irq_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  picbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct nlm_pic_irq* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	struct nlm_pic_irq *pd = FUNC1(d);

	FUNC0(!pd);

	if (pd->extra_ack)
		pd->extra_ack(d);

	/* re-enable the intr on this cpu */
	FUNC3(pd->picirq);

	/* Ack is a single write, no need to lock */
	FUNC2(pd->node->picbase, pd->irt);
}