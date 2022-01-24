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
struct irq_data {int dummy; } ;
struct irq_chip {int /*<<< orphan*/  (* irq_ack ) (struct irq_data*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BALLOON3_INT_CONTROL_REG ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long balloon3_irq_enabled ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 struct irq_chip* FUNC4 (struct irq_desc*) ; 
 struct irq_data* FUNC5 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_data*) ; 

__attribute__((used)) static void FUNC7(struct irq_desc *desc)
{
	unsigned long pending = FUNC2(BALLOON3_INT_CONTROL_REG) &
					balloon3_irq_enabled;
	do {
		struct irq_data *d = FUNC5(desc);
		struct irq_chip *chip = FUNC4(desc);
		unsigned int irq;

		/* clear useless edge notification */
		if (chip->irq_ack)
			chip->irq_ack(d);

		while (pending) {
			irq = FUNC0(0) + FUNC1(pending);
			FUNC3(irq);
			pending &= pending - 1;
		}
		pending = FUNC2(BALLOON3_INT_CONTROL_REG) &
				balloon3_irq_enabled;
	} while (pending);
}