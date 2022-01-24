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
struct TYPE_2__ {int /*<<< orphan*/ * object_prefix; } ;
struct rbd_device {TYPE_1__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct rbd_device*) ; 
 int FUNC2 (struct rbd_device*) ; 
 int FUNC3 (struct rbd_device*) ; 

__attribute__((used)) static int FUNC4(struct rbd_device *rbd_dev)
{
	bool first_time = rbd_dev->header.object_prefix == NULL;
	int ret;

	ret = FUNC2(rbd_dev);
	if (ret)
		return ret;

	if (first_time) {
		ret = FUNC1(rbd_dev);
		if (ret)
			return ret;
	}

	ret = FUNC3(rbd_dev);
	if (ret && first_time) {
		FUNC0(rbd_dev->header.object_prefix);
		rbd_dev->header.object_prefix = NULL;
	}

	return ret;
}