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
struct he_dev {int dummy; } ;
struct atm_dev {int dummy; } ;

/* Variables and functions */
 struct he_dev* FUNC0 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct atm_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct he_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct he_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct atm_dev* FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pci_dev)
{
	struct atm_dev *atm_dev;
	struct he_dev *he_dev;

	atm_dev = FUNC5(pci_dev);
	he_dev = FUNC0(atm_dev);

	/* need to remove from he_devs */

	FUNC2(he_dev);
	FUNC1(atm_dev);
	FUNC3(he_dev);

	FUNC4(pci_dev);
}