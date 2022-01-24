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
typedef  int u32 ;
struct pci_dev {scalar_t__ devfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	u32 dw;

	if (!FUNC1("gw,ventana"))
		return;

	if (dev->devfn != 0)
		return;

	FUNC2(dev, 0x62c, &dw);
	dw |= 0xaaa8; // GPIO1-7 outputs
	FUNC3(dev, 0x62c, dw);

	FUNC2(dev, 0x644, &dw);
	dw |= 0xfe;   // GPIO1-7 output high
	FUNC3(dev, 0x644, dw);

	FUNC0(100);
}