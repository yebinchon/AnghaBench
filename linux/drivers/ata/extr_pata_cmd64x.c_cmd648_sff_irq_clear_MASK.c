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
 int MRDMODE_INTR_CH0 ; 
 int MRDMODE_INTR_CH1 ; 
 int /*<<< orphan*/  FUNC0 (struct ata_port*) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long) ; 
 unsigned long FUNC3 (struct pci_dev*,int) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ata_port *ap)
{
	struct pci_dev *pdev = FUNC4(ap->host->dev);
	unsigned long base = FUNC3(pdev, 4);
	int irq_mask = ap->port_no ? MRDMODE_INTR_CH1 : MRDMODE_INTR_CH0;
	u8 mrdmode;

	FUNC0(ap);

	/* Clear this port's interrupt bit (leaving the other port alone) */
	mrdmode  = FUNC1(base + 1);
	mrdmode &= ~(MRDMODE_INTR_CH0 | MRDMODE_INTR_CH1);
	FUNC2(mrdmode | irq_mask, base + 1);
}