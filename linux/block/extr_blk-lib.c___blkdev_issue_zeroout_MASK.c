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

int FUNC3(struct block_device *bdev, sector_t sector,
		sector_t nr_sects, gfp_t gfp_mask, struct bio **biop,
		unsigned flags)
{
	int ret;
	sector_t bs_mask;

	bs_mask = (FUNC2(bdev) >> 9) - 1;
	if ((sector | nr_sects) & bs_mask)
		return -EINVAL;

	ret = FUNC0(bdev, sector, nr_sects, gfp_mask,
			biop, flags);
	if (ret != -EOPNOTSUPP || (flags & BLKDEV_ZERO_NOFALLBACK))
		return ret;

	return FUNC1(bdev, sector, nr_sects, gfp_mask,
					 biop);
}