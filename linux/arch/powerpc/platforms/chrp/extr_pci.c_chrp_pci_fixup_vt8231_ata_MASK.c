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
typedef  int u8 ;
struct pci_dev {int irq; int class; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CLASS_PROG ; 
 int /*<<< orphan*/  PCI_DEVICE_ID_VIA_8231 ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_VIA ; 
 scalar_t__ _CHRP_Pegasos ; 
 scalar_t__ _chrp_type ; 
 int /*<<< orphan*/  chrp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *viaide)
{
	u8 progif;
	struct pci_dev *viaisa;

	if (!FUNC1(chrp) || _chrp_type != _CHRP_Pegasos)
		return;
	if (viaide->irq != 14)
		return;

	viaisa = FUNC3(PCI_VENDOR_ID_VIA, PCI_DEVICE_ID_VIA_8231, NULL);
	if (!viaisa)
		return;
	FUNC0(&viaide->dev, "Fixing VIA IDE, force legacy mode on\n");

	FUNC4(viaide, PCI_CLASS_PROG, &progif);
	FUNC5(viaide, PCI_CLASS_PROG, progif & ~0x5);
	viaide->class &= ~0x5;

	FUNC2(viaisa);
}