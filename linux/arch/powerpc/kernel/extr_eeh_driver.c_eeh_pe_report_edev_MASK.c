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
struct pci_driver {int /*<<< orphan*/  name; int /*<<< orphan*/  err_handler; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct eeh_dev {int mode; struct pci_dev* pdev; int /*<<< orphan*/  pe; } ;
typedef  enum pci_ers_result { ____Placeholder_pci_ers_result } pci_ers_result ;
typedef  int (* eeh_report_fn ) (struct eeh_dev*,struct pci_dev*,struct pci_driver*) ;

/* Variables and functions */
 int EEH_DEV_NO_HANDLER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct eeh_dev*) ; 
 scalar_t__ FUNC3 (struct eeh_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct eeh_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct eeh_dev*,char*) ; 
 struct pci_driver* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct eeh_dev *edev, eeh_report_fn fn,
			       enum pci_ers_result *result)
{
	struct pci_dev *pdev;
	struct pci_driver *driver;
	enum pci_ers_result new_result;

	FUNC12();
	pdev = edev->pdev;
	if (pdev)
		FUNC9(&pdev->dev);
	FUNC13();
	if (!pdev) {
		FUNC4(edev, "no device");
		return;
	}
	FUNC0(&pdev->dev);
	if (FUNC3(edev)) {
		driver = FUNC6(pdev);

		if (!driver)
			FUNC4(edev, "no driver");
		else if (!driver->err_handler)
			FUNC4(edev, "driver not EEH aware");
		else if (edev->mode & EEH_DEV_NO_HANDLER)
			FUNC4(edev, "driver bound too late");
		else {
			new_result = fn(edev, pdev, driver);
			FUNC4(edev, "%s driver reports: '%s'",
				      driver->name,
				      FUNC11(new_result));
			if (result)
				*result = FUNC10(*result,
							       new_result);
		}
		if (driver)
			FUNC7(pdev);
	} else {
		FUNC4(edev, "not actionable (%d,%d,%d)", !!pdev,
			      !FUNC2(edev), !FUNC8(edev->pe));
	}
	FUNC1(&pdev->dev);
	if (edev->pdev != pdev)
		FUNC5(edev, "Device changed during processing!\n");
	FUNC14(&pdev->dev);
}