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
typedef  scalar_t__ u32 ;
struct gendisk {int dummy; } ;
struct block_device {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned int,scalar_t__*) ; 
 scalar_t__ FUNC3 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

__attribute__((used)) static bool FUNC5(struct gendisk *disk,
			      struct block_device *bdev,
			      sector_t from, sector_t size)
{
	unsigned int zone_sectors = FUNC1(bdev);

	/*
	 * If this function is called, then the disk is a zoned block device
	 * (host-aware or host-managed). This can be detected even if the
	 * zoned block device support is disabled (CONFIG_BLK_DEV_ZONED not
	 * set). In this case, however, only host-aware devices will be seen
	 * as a block device is not created for host-managed devices. Without
	 * zoned block device support, host-aware drives can still be used as
	 * regular block devices (no zone operation) and their zone size will
	 * be reported as 0. Allow this case.
	 */
	if (!zone_sectors)
		return true;

	/*
	 * Check partition start and size alignement. If the drive has a
	 * smaller last runt zone, ignore it and allow the partition to
	 * use it. Check the zone size too: it should be a power of 2 number
	 * of sectors.
	 */
	if (FUNC0(!FUNC4(zone_sectors))) {
		u32 rem;

		FUNC2(from, zone_sectors, &rem);
		if (rem)
			return false;
		if ((from + size) < FUNC3(disk)) {
			FUNC2(size, zone_sectors, &rem);
			if (rem)
				return false;
		}

	} else {

		if (from & (zone_sectors - 1))
			return false;
		if ((from + size) < FUNC3(disk) &&
		    (size & (zone_sectors - 1)))
			return false;

	}

	return true;
}