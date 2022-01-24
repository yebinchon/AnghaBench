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
struct pci_dn {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEH_FORCE_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dn*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct pci_dn* FUNC5 (struct pci_dev*) ; 

void FUNC6(struct pci_dev *pdev)
{
	struct pci_dn *pdn = FUNC5(pdev);

	if (!pdn || FUNC3(EEH_FORCE_DISABLED))
		return;

	FUNC0(&pdev->dev, "EEH: Setting up device\n");
	FUNC1(pdn);
	FUNC2(pdev);
	FUNC4(pdev);
}