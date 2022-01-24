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
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u32 ;
struct TYPE_2__ {struct ceph_snap_context* snapc; } ;
struct rbd_device {TYPE_1__ header; } ;
struct ceph_snap_context {size_t num_snaps; int /*<<< orphan*/ * snaps; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_NOSNAP ; 
 int /*<<< orphan*/  ENOENT ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (struct rbd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 

__attribute__((used)) static u64 FUNC5(struct rbd_device *rbd_dev, const char *name)
{
	struct ceph_snap_context *snapc = rbd_dev->header.snapc;
	u32 which;
	bool found = false;
	u64 snap_id;

	for (which = 0; !found && which < snapc->num_snaps; which++) {
		const char *snap_name;

		snap_id = snapc->snaps[which];
		snap_name = FUNC3(rbd_dev, snap_id);
		if (FUNC0(snap_name)) {
			/* ignore no-longer existing snapshots */
			if (FUNC1(snap_name) == -ENOENT)
				continue;
			else
				break;
		}
		found = !FUNC4(name, snap_name);
		FUNC2(snap_name);
	}
	return found ? snap_id : CEPH_NOSNAP;
}