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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ features; } ;
struct rbd_device {int image_format; TYPE_1__ header; } ;

/* Variables and functions */
 scalar_t__ CEPH_NOSNAP ; 
 int FUNC0 (struct rbd_device*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct rbd_device *rbd_dev, u64 snap_id,
			u64 *snap_features)
{
	FUNC1(FUNC2(rbd_dev->image_format));
	if (snap_id == CEPH_NOSNAP) {
		*snap_features = rbd_dev->header.features;
	} else if (rbd_dev->image_format == 1) {
		*snap_features = 0;	/* No features for format 1 */
	} else {
		u64 features = 0;
		int ret;

		ret = FUNC0(rbd_dev, snap_id, &features);
		if (ret)
			return ret;

		*snap_features = features;
	}
	return 0;
}