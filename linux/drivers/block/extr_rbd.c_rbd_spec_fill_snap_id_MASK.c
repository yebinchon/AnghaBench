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
struct rbd_spec {scalar_t__ pool_id; int snap_name; scalar_t__ snap_id; scalar_t__ image_name; scalar_t__ image_id; scalar_t__ pool_name; } ;
struct rbd_device {struct rbd_spec* spec; } ;

/* Variables and functions */
 scalar_t__ CEPH_NOPOOL ; 
 scalar_t__ CEPH_NOSNAP ; 
 int ENOENT ; 
 int /*<<< orphan*/  RBD_SNAP_HEAD_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct rbd_device*,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct rbd_device *rbd_dev)
{
	struct rbd_spec *spec = rbd_dev->spec;

	FUNC0(spec->pool_id != CEPH_NOPOOL && spec->pool_name);
	FUNC0(spec->image_id && spec->image_name);
	FUNC0(spec->snap_name);

	if (FUNC2(spec->snap_name, RBD_SNAP_HEAD_NAME)) {
		u64 snap_id;

		snap_id = FUNC1(rbd_dev, spec->snap_name);
		if (snap_id == CEPH_NOSNAP)
			return -ENOENT;

		spec->snap_id = snap_id;
	} else {
		spec->snap_id = CEPH_NOSNAP;
	}

	return 0;
}