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
struct block_device {int dummy; } ;
struct blk_plug {int dummy; } ;
struct bio {int dummy; } ;
typedef  int sector_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 unsigned int BLKDEV_ZERO_NOFALLBACK ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct block_device*,int,int,int /*<<< orphan*/ ,struct bio**,unsigned int) ; 
 int FUNC1 (struct block_device*,int,int,int /*<<< orphan*/ ,struct bio**) ; 
 int FUNC2 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC6 (struct blk_plug*) ; 
 int FUNC7 (struct bio*) ; 

int FUNC8(struct block_device *bdev, sector_t sector,
		sector_t nr_sects, gfp_t gfp_mask, unsigned flags)
{
	int ret = 0;
	sector_t bs_mask;
	struct bio *bio;
	struct blk_plug plug;
	bool try_write_zeroes = !!FUNC3(bdev);

	bs_mask = (FUNC2(bdev) >> 9) - 1;
	if ((sector | nr_sects) & bs_mask)
		return -EINVAL;

retry:
	bio = NULL;
	FUNC6(&plug);
	if (try_write_zeroes) {
		ret = FUNC0(bdev, sector, nr_sects,
						  gfp_mask, &bio, flags);
	} else if (!(flags & BLKDEV_ZERO_NOFALLBACK)) {
		ret = FUNC1(bdev, sector, nr_sects,
						gfp_mask, &bio);
	} else {
		/* No zeroing offload support */
		ret = -EOPNOTSUPP;
	}
	if (ret == 0 && bio) {
		ret = FUNC7(bio);
		FUNC4(bio);
	}
	FUNC5(&plug);
	if (ret && try_write_zeroes) {
		if (!(flags & BLKDEV_ZERO_NOFALLBACK)) {
			try_write_zeroes = false;
			goto retry;
		}
		if (!FUNC3(bdev)) {
			/*
			 * Zeroing offload support was indicated, but the
			 * device reported ILLEGAL REQUEST (for some devices
			 * there is no non-destructive way to verify whether
			 * WRITE ZEROES is actually supported).
			 */
			ret = -EOPNOTSUPP;
		}
	}

	return ret;
}