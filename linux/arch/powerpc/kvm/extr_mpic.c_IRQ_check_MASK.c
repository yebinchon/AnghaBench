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
struct openpic {int max_irq; TYPE_1__* src; } ;
struct irq_queue {int next; int priority; int /*<<< orphan*/  queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  ivpr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct openpic *opp, struct irq_queue *q)
{
	int irq = -1;
	int next = -1;
	int priority = -1;

	for (;;) {
		irq = FUNC1(q->queue, opp->max_irq, irq + 1);
		if (irq == opp->max_irq)
			break;

		FUNC2("IRQ_check: irq %d set ivpr_pr=%d pr=%d\n",
			irq, FUNC0(opp->src[irq].ivpr), priority);

		if (FUNC0(opp->src[irq].ivpr) > priority) {
			next = irq;
			priority = FUNC0(opp->src[irq].ivpr);
		}
	}

	q->next = next;
	q->priority = priority;
}