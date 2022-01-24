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
typedef  scalar_t__ u8 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int pcibios_last_bus ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *d)
{
	/*
	 * i450NX -- Find and scan all secondary buses on all PXB's.
	 */
	int pxb, reg;
	u8 busno, suba, subb;

	FUNC1(&d->dev, "Searching for i450NX host bridges\n");
	reg = 0xd0;
	for(pxb = 0; pxb < 2; pxb++) {
		FUNC2(d, reg++, &busno);
		FUNC2(d, reg++, &suba);
		FUNC2(d, reg++, &subb);
		FUNC0(&d->dev, "i450NX PXB %d: %02x/%02x/%02x\n", pxb, busno,
			suba, subb);
		if (busno)
			FUNC3(busno);	/* Bus A */
		if (suba < subb)
			FUNC3(suba+1);	/* Bus B */
	}
	pcibios_last_bus = -1;
}