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
typedef  int u16 ;
struct idt77252_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_IO ; 
 int PCI_COMMAND_MASTER ; 
 int PCI_COMMAND_MEMORY ; 
 int /*<<< orphan*/  SAR_CFG_SWRST ; 
 int /*<<< orphan*/  SAR_REG_CFG ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct idt77252_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct idt77252_dev *card)
{
	u16 pci_command;

/*****************************************************************/
/*   P C I   C O N F I G U R A T I O N                           */
/*****************************************************************/

	FUNC1("%s: Enable PCI master and memory access for SAR.\n",
		card->name);
	if (FUNC4(card->pcidev, PCI_COMMAND, &pci_command)) {
		FUNC6("%s: can't read PCI_COMMAND.\n", card->name);
		FUNC2(card);
		return -1;
	}
	if (!(pci_command & PCI_COMMAND_IO)) {
		FUNC6("%s: PCI_COMMAND: %04x (???)\n",
		       card->name, pci_command);
		FUNC2(card);
		return (-1);
	}
	pci_command |= (PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER);
	if (FUNC5(card->pcidev, PCI_COMMAND, pci_command)) {
		FUNC6("%s: can't write PCI_COMMAND.\n", card->name);
		FUNC2(card);
		return -1;
	}
/*****************************************************************/
/*   G E N E R I C   R E S E T                                   */
/*****************************************************************/

	/* Software reset */
	FUNC7(SAR_CFG_SWRST, SAR_REG_CFG);
	FUNC3(1);
	FUNC7(0, SAR_REG_CFG);

	FUNC0("%s: Software resetted.\n", card->name);
	return 0;
}