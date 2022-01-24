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
struct pnv_phb {scalar_t__ msi_base; int /*<<< orphan*/  msi_bmp; } ;
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct pci_controller {struct pnv_phb* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 struct pci_controller* FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct pci_dev *dev, int hwirq, int num)
{
	struct pci_controller *hose = FUNC1(dev->bus);
	struct pnv_phb *phb = hose->private_data;

	FUNC0(&phb->msi_bmp, hwirq - phb->msi_base, num);
}