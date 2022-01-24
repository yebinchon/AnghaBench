#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct eeh_dev {TYPE_1__* pe; } ;
struct TYPE_3__ {int /*<<< orphan*/  pass_dev_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  eeh_dev_mutex ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct eeh_dev* FUNC6 (struct pci_dev*) ; 

void FUNC7(struct pci_dev *pdev)
{
	struct eeh_dev *edev;

	FUNC4(&eeh_dev_mutex);

	/* No PCI device ? */
	if (!pdev)
		goto out;

	/* No EEH device ? */
	edev = FUNC6(pdev);
	if (!edev || !edev->pe || !FUNC3(edev->pe))
		goto out;

	/* Decrease PE's pass through count */
	FUNC0(FUNC1(&edev->pe->pass_dev_cnt) < 0);
	FUNC2(edev->pe);
out:
	FUNC5(&eeh_dev_mutex);
}