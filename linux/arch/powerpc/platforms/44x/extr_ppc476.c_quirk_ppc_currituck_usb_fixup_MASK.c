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
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	if (FUNC0("ibm,currituck")) {
		FUNC1(dev, 0xe0, 0x0114231f);
		FUNC1(dev, 0xe4, 0x00006c40);
	}
}