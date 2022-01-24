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
struct ti_st {struct hci_dev* hdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EFAULT ; 
 struct ti_st* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct hci_dev *hdev;
	struct ti_st *hst = FUNC1(&pdev->dev);

	if (!hst)
		return -EFAULT;

	FUNC0("%s", hst->hdev->name);

	hdev = hst->hdev;
	FUNC5(hdev);
	FUNC4(hdev);

	FUNC3(hdev);

	FUNC2(&pdev->dev, NULL);
	return 0;
}