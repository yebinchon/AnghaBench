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
struct rbd_device {int /*<<< orphan*/  object_map_flags; int /*<<< orphan*/  header_oloc; int /*<<< orphan*/  header_oid; TYPE_1__* spec; } ;
typedef  int /*<<< orphan*/  snapid ;
typedef  int /*<<< orphan*/  flags ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_2__ {int /*<<< orphan*/  snap_id; } ;

/* Variables and functions */
 int EBADMSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rbd_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct rbd_device *rbd_dev)
{
	__le64 snapid = FUNC0(rbd_dev->spec->snap_id);
	__le64 flags;
	int ret;

	ret = FUNC2(rbd_dev, &rbd_dev->header_oid,
				  &rbd_dev->header_oloc, "get_flags",
				  &snapid, sizeof(snapid),
				  &flags, sizeof(flags));
	if (ret < 0)
		return ret;
	if (ret < sizeof(flags))
		return -EBADMSG;

	rbd_dev->object_map_flags = FUNC1(flags);
	return 0;
}