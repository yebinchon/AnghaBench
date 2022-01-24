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
 int PCI_COMMAND ; 
 int PCI_COMMAND_IO ; 
 int PCI_COMMAND_MASTER ; 
 int PCI_COMMAND_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	unsigned int val;
	unsigned char c;

	/* enable IO */
	FUNC2(pdev, PCI_COMMAND,
			      PCI_COMMAND_IO | PCI_COMMAND_MEMORY |
			      PCI_COMMAND_MASTER);
	FUNC1(pdev, 0x4, &val);
	FUNC3(pdev, 0x4, val | 1);

	/* route ac97 IRQ */
	FUNC2(pdev, 0x3c, 9);

	FUNC0(pdev, 0x8, &c);

	/* link control: enable link & SGD PCM output */
	FUNC2(pdev, 0x41, 0xcc);

	/* disable game port, FM, midi, sb, enable write to reg2c-2f */
	FUNC2(pdev, 0x42, 0x20);

	/* we are using Avance logic codec */
	FUNC4(pdev, 0x2c, 0x1005);
	FUNC4(pdev, 0x2e, 0x4710);
	FUNC1(pdev, 0x2c, &val);

	FUNC2(pdev, 0x42, 0x0);
}