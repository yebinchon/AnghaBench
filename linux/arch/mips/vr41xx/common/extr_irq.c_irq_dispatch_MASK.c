#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct irq_desc {int dummy; } ;
struct irq_data {int dummy; } ;
struct irq_chip {int /*<<< orphan*/  (* irq_unmask ) (struct irq_data*) ;int /*<<< orphan*/  (* irq_ack ) (struct irq_data*) ;int /*<<< orphan*/  (* irq_mask ) (struct irq_data*) ;int /*<<< orphan*/  (* irq_mask_ack ) (struct irq_data*) ;} ;
struct TYPE_3__ {int (* get_irq ) (unsigned int) ;} ;
typedef  TYPE_1__ irq_cascade_t ;

/* Variables and functions */
 unsigned int NR_IRQS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 TYPE_1__* irq_cascade ; 
 struct irq_chip* FUNC2 (struct irq_desc*) ; 
 struct irq_data* FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  irq_err_count ; 
 struct irq_desc* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct irq_data*) ; 
 int FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct irq_data*) ; 

__attribute__((used)) static void FUNC11(unsigned int irq)
{
	irq_cascade_t *cascade;

	if (irq >= NR_IRQS) {
		FUNC0(&irq_err_count);
		return;
	}

	cascade = irq_cascade + irq;
	if (cascade->get_irq != NULL) {
		struct irq_desc *desc = FUNC4(irq);
		struct irq_data *idata = FUNC3(desc);
		struct irq_chip *chip = FUNC2(desc);
		int ret;

		if (chip->irq_mask_ack)
			chip->irq_mask_ack(idata);
		else {
			chip->irq_mask(idata);
			chip->irq_ack(idata);
		}
		ret = cascade->get_irq(irq);
		irq = ret;
		if (ret < 0)
			FUNC0(&irq_err_count);
		else
			FUNC11(irq);
		if (!FUNC5(idata) && chip->irq_unmask)
			chip->irq_unmask(idata);
	} else
		FUNC1(irq);
}