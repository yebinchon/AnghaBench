#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ARTTIM23 ; 
 int ARTTIM23_INTR_CH1 ; 
 int CFR ; 
 int CFR_INTR_CH0 ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct ata_port *ap)
{
	struct pci_dev *pdev = FUNC1(ap->host->dev);
	int irq_mask = ap->port_no ? ARTTIM23_INTR_CH1 : CFR_INTR_CH0;
	int irq_reg  = ap->port_no ? ARTTIM23 : CFR;
	u8 irq_stat;

	/* NOTE: reading the register should clear the interrupt */
	FUNC0(pdev, irq_reg, &irq_stat);

	return irq_stat & irq_mask;
}