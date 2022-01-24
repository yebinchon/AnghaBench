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
struct mpic {int flags; } ;
struct irq_desc {int /*<<< orphan*/  irq_data; } ;
struct irq_chip {int /*<<< orphan*/  (* irq_eoi ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MPIC_SECONDARY ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 struct irq_chip* FUNC2 (struct irq_desc*) ; 
 struct mpic* FUNC3 (struct irq_desc*) ; 
 unsigned int FUNC4 (struct mpic*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct irq_desc *desc)
{
	struct irq_chip *chip = FUNC2(desc);
	struct mpic *mpic = FUNC3(desc);
	unsigned int virq;

	FUNC0(!(mpic->flags & MPIC_SECONDARY));

	virq = FUNC4(mpic);
	if (virq)
		FUNC1(virq);

	chip->irq_eoi(&desc->irq_data);
}