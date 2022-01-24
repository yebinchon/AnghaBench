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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *pdev)
{
	u8 btr;
	/* Setup HT1000 SouthBridge Controller - Single Channel Only */
	FUNC0(pdev, 0x5A, &btr);
	btr &= ~0x40;
	btr |= 0x3;
	FUNC1(pdev, 0x5A, btr);
}