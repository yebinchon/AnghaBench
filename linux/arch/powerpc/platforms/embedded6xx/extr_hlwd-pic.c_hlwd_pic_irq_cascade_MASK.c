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
struct irq_domain {int dummy; } ;
struct irq_desc {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_data; } ;
struct irq_chip {int /*<<< orphan*/  (* irq_unmask ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* irq_ack ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* irq_mask ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 struct irq_chip* FUNC2 (struct irq_desc*) ; 
 struct irq_domain* FUNC3 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct irq_desc *desc)
{
	struct irq_chip *chip = FUNC2(desc);
	struct irq_domain *irq_domain = FUNC3(desc);
	unsigned int virq;

	FUNC6(&desc->lock);
	chip->irq_mask(&desc->irq_data); /* IRQ_LEVEL */
	FUNC7(&desc->lock);

	virq = FUNC0(irq_domain);
	if (virq)
		FUNC1(virq);
	else
		FUNC5("spurious interrupt!\n");

	FUNC6(&desc->lock);
	chip->irq_ack(&desc->irq_data); /* IRQ_LEVEL */
	if (!FUNC4(&desc->irq_data) && chip->irq_unmask)
		chip->irq_unmask(&desc->irq_data);
	FUNC7(&desc->lock);
}