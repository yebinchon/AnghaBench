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
struct rbd_device {int /*<<< orphan*/  flags; TYPE_1__* spec; } ;
struct TYPE_2__ {scalar_t__ snap_id; } ;

/* Variables and functions */
 scalar_t__ BAD_SNAP_INDEX ; 
 scalar_t__ CEPH_NOSNAP ; 
 int /*<<< orphan*/  RBD_DEV_FLAG_EXISTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct rbd_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct rbd_device *rbd_dev)
{
	u64 snap_id;

	if (!FUNC2(RBD_DEV_FLAG_EXISTS, &rbd_dev->flags))
		return;

	snap_id = rbd_dev->spec->snap_id;
	if (snap_id == CEPH_NOSNAP)
		return;

	if (FUNC1(rbd_dev, snap_id) == BAD_SNAP_INDEX)
		FUNC0(RBD_DEV_FLAG_EXISTS, &rbd_dev->flags);
}