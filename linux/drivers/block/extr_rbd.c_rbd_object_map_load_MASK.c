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
struct rbd_device {int object_map_flags; } ;

/* Variables and functions */
 int RBD_FLAG_OBJECT_MAP_INVALID ; 
 int FUNC0 (struct rbd_device*) ; 
 int FUNC1 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rbd_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct rbd_device*,char*) ; 

__attribute__((used)) static int FUNC4(struct rbd_device *rbd_dev)
{
	int ret;

	ret = FUNC0(rbd_dev);
	if (ret)
		return ret;

	ret = FUNC1(rbd_dev);
	if (ret) {
		FUNC2(rbd_dev);
		return ret;
	}

	if (rbd_dev->object_map_flags & RBD_FLAG_OBJECT_MAP_INVALID)
		FUNC3(rbd_dev, "object map is invalid");

	return 0;
}