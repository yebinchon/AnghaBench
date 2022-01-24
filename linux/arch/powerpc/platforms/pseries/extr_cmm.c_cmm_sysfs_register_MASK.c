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
struct device {int /*<<< orphan*/ * bus; scalar_t__ id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cmm_attrs ; 
 int /*<<< orphan*/  cmm_subsys ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	int i, rc;

	if ((rc = FUNC6(&cmm_subsys, NULL)))
		return rc;

	dev->id = 0;
	dev->bus = &cmm_subsys;

	if ((rc = FUNC3(dev)))
		goto subsys_unregister;

	for (i = 0; i < FUNC0(cmm_attrs); i++) {
		if ((rc = FUNC2(dev, cmm_attrs[i])))
			goto fail;
	}

	return 0;

fail:
	while (--i >= 0)
		FUNC4(dev, cmm_attrs[i]);
	FUNC5(dev);
subsys_unregister:
	FUNC1(&cmm_subsys);
	return rc;
}