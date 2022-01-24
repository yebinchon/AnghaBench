#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct eeh_dev {TYPE_1__* pe; } ;
struct TYPE_2__ {int /*<<< orphan*/  pass_dev_cnt; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  eeh_dev_mutex ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct eeh_dev* FUNC4 (struct pci_dev*) ; 

int FUNC5(struct pci_dev *pdev)
{
	struct eeh_dev *edev;
	int ret = -ENODEV;

	FUNC2(&eeh_dev_mutex);

	/* No PCI device ? */
	if (!pdev)
		goto out;

	/* No EEH device or PE ? */
	edev = FUNC4(pdev);
	if (!edev || !edev->pe)
		goto out;

	/*
	 * The PE might have been put into frozen state, but we
	 * didn't detect that yet. The passed through PCI devices
	 * in frozen PE won't work properly. Clear the frozen state
	 * in advance.
	 */
	ret = FUNC1(edev->pe);
	if (ret)
		goto out;

	/* Increase PE's pass through count */
	FUNC0(&edev->pe->pass_dev_cnt);
	FUNC3(&eeh_dev_mutex);

	return 0;
out:
	FUNC3(&eeh_dev_mutex);
	return ret;
}