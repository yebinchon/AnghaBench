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
struct locomo {unsigned int irq_base; scalar_t__ base; } ;
struct TYPE_4__ {TYPE_1__* chip; } ;
struct irq_desc {TYPE_2__ irq_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* irq_ack ) (TYPE_2__*) ;} ;

/* Variables and functions */
 scalar_t__ LOCOMO_ICR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct locomo* FUNC1 (struct irq_desc*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(struct irq_desc *desc)
{
	struct locomo *lchip = FUNC1(desc);
	int req, i;

	/* Acknowledge the parent IRQ */
	desc->irq_data.chip->irq_ack(&desc->irq_data);

	/* check why this interrupt was generated */
	req = FUNC2(lchip->base + LOCOMO_ICR) & 0x0f00;

	if (req) {
		unsigned int irq;

		/* generate the next interrupt(s) */
		irq = lchip->irq_base;
		for (i = 0; i <= 3; i++, irq++) {
			if (req & (0x0100 << i)) {
				FUNC0(irq);
			}

		}
	}
}