#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* chip; } ;
struct irq_desc {TYPE_2__ irq_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* irq_ack ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct irq_desc *desc)
{
	unsigned int irq;
	unsigned long pending;

	pending = FUNC5();
	do {
		/* we're in a chained irq handler,
		 * so ack the interrupt by hand */
		desc->irq_data.chip->irq_ack(&desc->irq_data);

		if (FUNC2(pending)) {
			irq = FUNC4(FUNC0(pending));
			FUNC1(irq);
		}
		pending = FUNC5();
	} while (pending);
}