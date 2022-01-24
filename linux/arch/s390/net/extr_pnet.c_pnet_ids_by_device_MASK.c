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
typedef  int /*<<< orphan*/  u8 ;
struct zpci_dev {int /*<<< orphan*/ * util_str; } ;
struct device {int dummy; } ;
struct ccwgroup_device {int /*<<< orphan*/ * cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int PNETIDS_LEN ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct ccwgroup_device* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 struct zpci_dev* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct device *dev, u8 *pnetids)
{
	FUNC6(pnetids, 0, PNETIDS_LEN);
	if (FUNC2(dev)) {
		struct ccwgroup_device *gdev = FUNC7(dev);
		u8 *util_str;

		util_str = FUNC1(gdev->cdev[0], 0);
		if (!util_str)
			return -ENOMEM;
		FUNC5(pnetids, util_str, PNETIDS_LEN);
		FUNC0(pnetids, PNETIDS_LEN);
		FUNC4(util_str);
		return 0;
	}
	if (FUNC3(dev)) {
		struct zpci_dev *zdev = FUNC9(FUNC8(dev));

		FUNC5(pnetids, zdev->util_str, sizeof(zdev->util_str));
		FUNC0(pnetids, sizeof(zdev->util_str));
		return 0;
	}
	return -EOPNOTSUPP;
}