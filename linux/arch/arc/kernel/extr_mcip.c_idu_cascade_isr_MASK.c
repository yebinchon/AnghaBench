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
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
typedef  scalar_t__ irq_hw_number_t ;

/* Variables and functions */
 scalar_t__ FIRST_EXT_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct irq_chip* FUNC3 (struct irq_desc*) ; 
 struct irq_domain* FUNC4 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_domain*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct irq_desc *desc)
{
	struct irq_domain *idu_domain = FUNC4(desc);
	struct irq_chip *core_chip = FUNC3(desc);
	irq_hw_number_t core_hwirq = FUNC7(FUNC5(desc));
	irq_hw_number_t idu_hwirq = core_hwirq - FIRST_EXT_IRQ;

	FUNC0(core_chip, desc);
	FUNC2(FUNC6(idu_domain, idu_hwirq));
	FUNC1(core_chip, desc);
}