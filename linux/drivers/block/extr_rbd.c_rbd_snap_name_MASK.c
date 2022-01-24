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
typedef  scalar_t__ u64 ;
struct rbd_device {int image_format; } ;

/* Variables and functions */
 scalar_t__ CEPH_NOSNAP ; 
 char const* RBD_SNAP_HEAD_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (struct rbd_device*,scalar_t__) ; 
 char const* FUNC2 (struct rbd_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static const char *FUNC4(struct rbd_device *rbd_dev, u64 snap_id)
{
	if (snap_id == CEPH_NOSNAP)
		return RBD_SNAP_HEAD_NAME;

	FUNC0(FUNC3(rbd_dev->image_format));
	if (rbd_dev->image_format == 1)
		return FUNC1(rbd_dev, snap_id);

	return FUNC2(rbd_dev, snap_id);
}