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
typedef  int u16 ;

/* Variables and functions */
 int SC1200_REV_B1 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(void)
{
	/* Magic registers that give us the chipset data */
	u8 chip_id = FUNC0(0x903C);
	u8 silicon_rev = FUNC0(0x903D);
	u16 pci_clock;

	if (chip_id == 0x04 && silicon_rev < SC1200_REV_B1)
		return 0;	/* 33 MHz mode */

	/* Clock generator configuration 0x901E its 8/9 are the PCI clocking
	   0/3 is 33Mhz 1 is 48 2 is 66 */

	pci_clock = FUNC1(0x901E);
	pci_clock >>= 8;
	pci_clock &= 0x03;
	if (pci_clock == 3)
		pci_clock = 0;
	return pci_clock;
}