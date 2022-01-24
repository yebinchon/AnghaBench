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
struct block_device {int /*<<< orphan*/  bd_disk; int /*<<< orphan*/  bd_part; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct block_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC5(struct block_device *bdev,
						sector_t nr_sectors)
{
	if (!FUNC1(FUNC0(bdev)))
		return false;

	if (nr_sectors != FUNC4(bdev->bd_part))
		return false;
	/*
	 * REQ_OP_ZONE_RESET_ALL can be executed only if the block device is
	 * the entire disk, that is, if the blocks device start offset is 0 and
	 * its capacity is the same as the entire disk.
	 */
	return FUNC3(bdev) == 0 &&
	       FUNC4(bdev->bd_part) == FUNC2(bdev->bd_disk);
}