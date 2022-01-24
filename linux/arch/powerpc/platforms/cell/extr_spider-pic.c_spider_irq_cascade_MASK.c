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
struct spider_pic {int /*<<< orphan*/  host; scalar_t__ regs; } ;
struct irq_desc {int /*<<< orphan*/  irq_data; } ;
struct irq_chip {int /*<<< orphan*/  (* irq_eoi ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 unsigned int SPIDER_IRQ_INVALID ; 
 scalar_t__ TIR_CS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (scalar_t__) ; 
 struct irq_chip* FUNC2 (struct irq_desc*) ; 
 struct spider_pic* FUNC3 (struct irq_desc*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct irq_desc *desc)
{
	struct irq_chip *chip = FUNC2(desc);
	struct spider_pic *pic = FUNC3(desc);
	unsigned int cs, virq;

	cs = FUNC1(pic->regs + TIR_CS) >> 24;
	if (cs == SPIDER_IRQ_INVALID)
		virq = 0;
	else
		virq = FUNC4(pic->host, cs);

	if (virq)
		FUNC0(virq);

	chip->irq_eoi(&desc->irq_data);
}