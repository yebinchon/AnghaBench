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
struct hwicap_drvdata {int /*<<< orphan*/  mem_size; int /*<<< orphan*/  mem_start; int /*<<< orphan*/  base_address; int /*<<< orphan*/  cdev; int /*<<< orphan*/  devt; } ;
struct device {int /*<<< orphan*/  devt; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t XHWICAP_MINOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct hwicap_drvdata* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  icap_class ; 
 int /*<<< orphan*/  icap_sem ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hwicap_drvdata*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__* probed_devices ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	struct hwicap_drvdata *drvdata;

	drvdata = FUNC2(dev);

	if (!drvdata)
		return 0;

	FUNC3(icap_class, drvdata->devt);
	FUNC1(&drvdata->cdev);
	FUNC4(drvdata->base_address);
	FUNC8(drvdata->mem_start, drvdata->mem_size);
	FUNC5(drvdata);

	FUNC6(&icap_sem);
	probed_devices[FUNC0(dev->devt)-XHWICAP_MINOR] = 0;
	FUNC7(&icap_sem);
	return 0;		/* success */
}