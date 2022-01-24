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
struct TYPE_2__ {scalar_t__ size; } ;
struct rbd_device {int /*<<< orphan*/  disk; TYPE_1__ mapping; int /*<<< orphan*/  flags; } ;
typedef  int sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  RBD_DEV_FLAG_EXISTS ; 
 int /*<<< orphan*/  RBD_DEV_FLAG_REMOVING ; 
 int SECTOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct rbd_device *rbd_dev)
{
	sector_t size;

	/*
	 * If EXISTS is not set, rbd_dev->disk may be NULL, so don't
	 * try to update its size.  If REMOVING is set, updating size
	 * is just useless work since the device can't be opened.
	 */
	if (FUNC3(RBD_DEV_FLAG_EXISTS, &rbd_dev->flags) &&
	    !FUNC3(RBD_DEV_FLAG_REMOVING, &rbd_dev->flags)) {
		size = (sector_t)rbd_dev->mapping.size / SECTOR_SIZE;
		FUNC0("setting size to %llu sectors", (unsigned long long)size);
		FUNC2(rbd_dev->disk, size);
		FUNC1(rbd_dev->disk);
	}
}