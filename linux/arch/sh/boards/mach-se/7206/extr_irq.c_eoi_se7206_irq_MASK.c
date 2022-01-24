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
struct irq_data {unsigned int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTSTS0 ; 
 int /*<<< orphan*/  INTSTS1 ; 
#define  IRQ0_IRQ 130 
#define  IRQ1_IRQ 129 
#define  IRQ3_IRQ 128 
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*) ; 

__attribute__((used)) static void FUNC5(struct irq_data *data)
{
	unsigned short sts0,sts1;
	unsigned int irq = data->irq;

	if (!FUNC3(data) && !FUNC4(data))
		FUNC2(data);
	/* FPGA isr clear */
	sts0 = FUNC0(INTSTS0);
	sts1 = FUNC0(INTSTS1);

	switch (irq) {
	case IRQ0_IRQ:
		sts0 &= ~0x0010;
		break;
	case IRQ1_IRQ:
		sts0 &= ~0x000f;
		break;
	case IRQ3_IRQ:
		sts0 &= ~0x0f00;
		sts1 &= ~0x00ff;
		break;
	}
	FUNC1(sts0, INTSTS0);
	FUNC1(sts1, INTSTS1);
}