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
struct irq_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ BCSR_REG_INTSTAT ; 
 scalar_t__ FUNC0 (unsigned short) ; 
 unsigned short FUNC1 (scalar_t__) ; 
 scalar_t__ bcsr_csc_base ; 
 scalar_t__ bcsr_virt ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct irq_chip* FUNC5 (struct irq_desc*) ; 

__attribute__((used)) static void FUNC6(struct irq_desc *d)
{
	unsigned short bisr = FUNC1(bcsr_virt + BCSR_REG_INTSTAT);
	struct irq_chip *chip = FUNC5(d);

	FUNC2(chip, d);
	FUNC4(bcsr_csc_base + FUNC0(bisr));
	FUNC3(chip, d);
}