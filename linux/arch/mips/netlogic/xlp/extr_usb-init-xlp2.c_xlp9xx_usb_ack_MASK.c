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
typedef  int /*<<< orphan*/  u64 ;
struct irq_data {int irq; } ;

/* Variables and functions */
 int NLM_IRQS_PER_NODE ; 
#define  PIC_9XX_XHCI_0_IRQ 130 
#define  PIC_9XX_XHCI_1_IRQ 129 
#define  PIC_9XX_XHCI_2_IRQ 128 
 int /*<<< orphan*/  XLPII_USB3_INT_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

__attribute__((used)) static void FUNC3(struct irq_data *data)
{
	u64 port_addr;
	int node, irq;

	/* Find the node and irq on the node */
	irq = data->irq % NLM_IRQS_PER_NODE;
	node = data->irq / NLM_IRQS_PER_NODE;

	switch (irq) {
	case PIC_9XX_XHCI_0_IRQ:
		port_addr = FUNC1(node, 1);
		break;
	case PIC_9XX_XHCI_1_IRQ:
		port_addr = FUNC1(node, 2);
		break;
	case PIC_9XX_XHCI_2_IRQ:
		port_addr = FUNC1(node, 3);
		break;
	default:
		FUNC2("No matching USB irq %d node  %d!\n", irq, node);
		return;
	}
	FUNC0(port_addr, XLPII_USB3_INT_REG, 0xffffffff);
}