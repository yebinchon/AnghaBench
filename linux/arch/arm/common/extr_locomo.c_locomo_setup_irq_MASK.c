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
struct locomo {int irq_base; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int IRQ_NOPROBE ; 
 int IRQ_NOREQUEST ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_FALLING ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct locomo*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct locomo*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  locomo_chip ; 
 int /*<<< orphan*/  locomo_handler ; 

__attribute__((used)) static void FUNC5(struct locomo *lchip)
{
	int irq = lchip->irq_base;

	/*
	 * Install handler for IRQ_LOCOMO_HW.
	 */
	FUNC4(lchip->irq, IRQ_TYPE_EDGE_FALLING);
	FUNC1(lchip->irq, locomo_handler, lchip);

	/* Install handlers for IRQ_LOCOMO_* */
	for ( ; irq <= lchip->irq_base + 3; irq++) {
		FUNC2(irq, &locomo_chip, handle_level_irq);
		FUNC3(irq, lchip);
		FUNC0(irq, IRQ_NOREQUEST | IRQ_NOPROBE);
	}
}