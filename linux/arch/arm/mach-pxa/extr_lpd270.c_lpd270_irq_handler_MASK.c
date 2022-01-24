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
 int /*<<< orphan*/  LPD270_INT_STATUS ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 unsigned long lpd270_irq_enabled ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(struct irq_desc *desc)
{
	unsigned int irq;
	unsigned long pending;

	pending = FUNC2(LPD270_INT_STATUS) & lpd270_irq_enabled;
	do {
		/* clear useless edge notification */
		desc->irq_data.chip->irq_ack(&desc->irq_data);
		if (FUNC4(pending)) {
			irq = FUNC0(0) + FUNC1(pending);
			FUNC3(irq);

			pending = FUNC2(LPD270_INT_STATUS) &
						lpd270_irq_enabled;
		}
	} while (pending);
}