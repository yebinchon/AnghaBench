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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_UART1_INT_REG ; 
 int /*<<< orphan*/  PCI_UART2_INT_REG ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct pci_dev *pdev)
{
	/* the uart1 and uart2 interrupt in PIC is enabled as default */
	FUNC0(pdev, PCI_UART1_INT_REG, 1);
	FUNC0(pdev, PCI_UART2_INT_REG, 1);
}