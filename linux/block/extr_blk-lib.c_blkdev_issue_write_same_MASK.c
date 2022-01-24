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
struct page {int dummy; } ;
struct block_device {int dummy; } ;
struct blk_plug {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int FUNC0 (struct block_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct page*,struct bio**) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC3 (struct blk_plug*) ; 
 int FUNC4 (struct bio*) ; 

int FUNC5(struct block_device *bdev, sector_t sector,
				sector_t nr_sects, gfp_t gfp_mask,
				struct page *page)
{
	struct bio *bio = NULL;
	struct blk_plug plug;
	int ret;

	FUNC3(&plug);
	ret = FUNC0(bdev, sector, nr_sects, gfp_mask, page,
			&bio);
	if (ret == 0 && bio) {
		ret = FUNC4(bio);
		FUNC1(bio);
	}
	FUNC2(&plug);
	return ret;
}