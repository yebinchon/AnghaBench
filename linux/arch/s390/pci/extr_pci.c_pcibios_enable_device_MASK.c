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
struct zpci_dev {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct pci_dev*,int) ; 
 struct zpci_dev* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct zpci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct zpci_dev*) ; 

int FUNC5(struct pci_dev *pdev, int mask)
{
	struct zpci_dev *zdev = FUNC2(pdev);

	FUNC3(zdev, FUNC0(&pdev->dev));
	FUNC4(zdev);

	return FUNC1(pdev, mask);
}