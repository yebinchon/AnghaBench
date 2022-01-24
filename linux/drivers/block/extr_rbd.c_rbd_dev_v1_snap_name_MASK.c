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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct rbd_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAD_SNAP_INDEX ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct rbd_device*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct rbd_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC3(struct rbd_device *rbd_dev,
					u64 snap_id)
{
	u32 which;
	const char *snap_name;

	which = FUNC2(rbd_dev, snap_id);
	if (which == BAD_SNAP_INDEX)
		return FUNC0(-ENOENT);

	snap_name = FUNC1(rbd_dev, which);
	return snap_name ? snap_name : FUNC0(-ENOMEM);
}