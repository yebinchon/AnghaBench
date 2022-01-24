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
struct pci_channel {int dummy; } ;

/* Variables and functions */
 unsigned long PCIMCR_MRSET_OFF ; 
 unsigned long PCIMCR_RFSH_OFF ; 
 int /*<<< orphan*/  SH4_PCIBCR1 ; 
 int /*<<< orphan*/  SH4_PCILAR0 ; 
 int /*<<< orphan*/  SH4_PCILAR1 ; 
 int /*<<< orphan*/  SH4_PCIMCR ; 
 int /*<<< orphan*/  SH7751_BCR1 ; 
 int /*<<< orphan*/  SH7751_MCR ; 
 int /*<<< orphan*/  SH7751_PCICONF5 ; 
 int /*<<< orphan*/  SH7751_PCICONF6 ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_channel*,int,int /*<<< orphan*/ ) ; 

int FUNC2(struct pci_channel *chan)
{
	unsigned long bcr1, mcr;

	bcr1 = FUNC0(SH7751_BCR1);
	bcr1 |= 0x40080000;	/* Enable Bit 19 BREQEN, set PCIC to slave */
	FUNC1(chan, bcr1, SH4_PCIBCR1);

	mcr = FUNC0(SH7751_MCR);
	mcr = (mcr & PCIMCR_MRSET_OFF) & PCIMCR_RFSH_OFF;
	FUNC1(chan, mcr, SH4_PCIMCR);

	FUNC1(chan, 0x0c000000, SH7751_PCICONF5);
	FUNC1(chan, 0xd0000000, SH7751_PCICONF6);
	FUNC1(chan, 0x0c000000, SH4_PCILAR0);
	FUNC1(chan, 0x00000000, SH4_PCILAR1);

	return 0;
}