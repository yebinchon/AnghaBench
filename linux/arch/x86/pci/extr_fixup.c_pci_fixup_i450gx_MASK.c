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
typedef  int /*<<< orphan*/  u8 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int pcibios_last_bus ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *d)
{
	/*
	 * i450GX and i450KX -- Find and scan all secondary buses.
	 * (called separately for each PCI bridge found)
	 */
	u8 busno;
	FUNC1(d, 0x4a, &busno);
	FUNC0(&d->dev, "i440KX/GX host bridge; secondary bus %02x\n", busno);
	FUNC2(busno);
	pcibios_last_bus = -1;
}