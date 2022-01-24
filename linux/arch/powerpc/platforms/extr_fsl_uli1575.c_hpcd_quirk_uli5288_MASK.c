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
 int PCI_CLASS_DEVICE ; 
 int PCI_CLASS_PROG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpc86xx_hpcd ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,unsigned char) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	unsigned char c;

	if (!FUNC0(mpc86xx_hpcd))
		return;

	FUNC1(dev, 0x83, &c);
	c |= 0x80;
	FUNC2(dev, 0x83, c);

	FUNC2(dev, PCI_CLASS_PROG, 0x01);
	FUNC2(dev, PCI_CLASS_DEVICE, 0x06);

	FUNC1(dev, 0x83, &c);
	c &= 0x7f;
	FUNC2(dev, 0x83, c);
}