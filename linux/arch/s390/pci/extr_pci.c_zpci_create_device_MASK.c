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
struct zpci_dev {scalar_t__ state; int /*<<< orphan*/  entry; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ ZPCI_FN_STATE_CONFIGURED ; 
 scalar_t__ ZPCI_FN_STATE_ONLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct zpci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct zpci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct zpci_dev*) ; 
 int FUNC7 (struct zpci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct zpci_dev*) ; 
 int FUNC9 (struct zpci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct zpci_dev*) ; 
 int /*<<< orphan*/  zpci_list ; 
 int /*<<< orphan*/  zpci_list_lock ; 
 int FUNC11 (struct zpci_dev*) ; 

int FUNC12(struct zpci_dev *zdev)
{
	int rc;

	rc = FUNC4(zdev);
	if (rc)
		goto out;

	rc = FUNC9(zdev);
	if (rc)
		goto out_free;

	FUNC1(&zdev->lock);
	if (zdev->state == ZPCI_FN_STATE_CONFIGURED) {
		rc = FUNC7(zdev);
		if (rc)
			goto out_destroy_iommu;
	}
	rc = FUNC11(zdev);
	if (rc)
		goto out_disable;

	FUNC2(&zpci_list_lock);
	FUNC0(&zdev->entry, &zpci_list);
	FUNC3(&zpci_list_lock);

	FUNC10(zdev);

	return 0;

out_disable:
	if (zdev->state == ZPCI_FN_STATE_ONLINE)
		FUNC6(zdev);
out_destroy_iommu:
	FUNC5(zdev);
out_free:
	FUNC8(zdev);
out:
	return rc;
}