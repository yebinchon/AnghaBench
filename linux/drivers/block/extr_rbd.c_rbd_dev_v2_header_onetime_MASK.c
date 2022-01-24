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
struct TYPE_2__ {int features; int /*<<< orphan*/ * object_prefix; } ;
struct rbd_device {TYPE_1__ header; } ;

/* Variables and functions */
 int RBD_FEATURE_DATA_POOL ; 
 int RBD_FEATURE_STRIPINGV2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct rbd_device*) ; 
 int FUNC2 (struct rbd_device*) ; 
 int FUNC3 (struct rbd_device*) ; 
 int FUNC4 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct rbd_device*) ; 

__attribute__((used)) static int FUNC6(struct rbd_device *rbd_dev)
{
	int ret;

	ret = FUNC3(rbd_dev);
	if (ret)
		goto out_err;

	/*
	 * Get the and check features for the image.  Currently the
	 * features are assumed to never change.
	 */
	ret = FUNC2(rbd_dev);
	if (ret)
		goto out_err;

	/* If the image supports fancy striping, get its parameters */

	if (rbd_dev->header.features & RBD_FEATURE_STRIPINGV2) {
		ret = FUNC4(rbd_dev);
		if (ret < 0)
			goto out_err;
	}

	if (rbd_dev->header.features & RBD_FEATURE_DATA_POOL) {
		ret = FUNC1(rbd_dev);
		if (ret)
			goto out_err;
	}

	FUNC5(rbd_dev);
	return 0;

out_err:
	rbd_dev->header.features = 0;
	FUNC0(rbd_dev->header.object_prefix);
	rbd_dev->header.object_prefix = NULL;
	return ret;
}