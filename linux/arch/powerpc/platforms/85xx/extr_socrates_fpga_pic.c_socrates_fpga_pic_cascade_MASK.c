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
struct irq_desc {int /*<<< orphan*/  irq_data; } ;
struct irq_chip {int /*<<< orphan*/  (* irq_eoi ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct irq_chip* FUNC1 (struct irq_desc*) ; 
 unsigned int FUNC2 (struct irq_desc*) ; 
 unsigned int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct irq_desc *desc)
{
	struct irq_chip *chip = FUNC1(desc);
	unsigned int irq = FUNC2(desc);
	unsigned int cascade_irq;

	/*
	 * See if we actually have an interrupt, call generic handling code if
	 * we do.
	 */
	cascade_irq = FUNC3(irq);

	if (cascade_irq)
		FUNC0(cascade_irq);
	chip->irq_eoi(&desc->irq_data);
}