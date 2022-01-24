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
 int FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  pci_soc_mode ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev)
{
	int id;

	if (!pci_soc_mode)
		return;

	id = FUNC0(dev);
	if (id < 0)
		return;

	/*
	 * This sets only PMCSR bits. The actual power off will happen in
	 * arch/x86/platform/intel-mid/pwr.c.
	 */
	FUNC1(dev);
}