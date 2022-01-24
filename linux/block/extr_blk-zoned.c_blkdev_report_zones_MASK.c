#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct block_device {TYPE_3__* bd_disk; TYPE_2__* bd_part; } ;
struct blk_zone {int dummy; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_6__ {TYPE_1__* fops; } ;
struct TYPE_5__ {scalar_t__ nr_sects; } ;
struct TYPE_4__ {int /*<<< orphan*/  report_zones; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,scalar_t__) ; 
 struct request_queue* FUNC2 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int FUNC4 (TYPE_3__*,scalar_t__,struct blk_zone*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct block_device*,struct blk_zone*) ; 
 scalar_t__ FUNC6 (struct block_device*) ; 
 unsigned int FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 

int FUNC8(struct block_device *bdev, sector_t sector,
			struct blk_zone *zones, unsigned int *nr_zones)
{
	struct request_queue *q = FUNC2(bdev);
	unsigned int i, nrz;
	int ret;

	if (!FUNC3(q))
		return -EOPNOTSUPP;

	/*
	 * A block device that advertized itself as zoned must have a
	 * report_zones method. If it does not have one defined, the device
	 * driver has a bug. So warn about that.
	 */
	if (FUNC0(!bdev->bd_disk->fops->report_zones))
		return -EOPNOTSUPP;

	if (!*nr_zones || sector >= bdev->bd_part->nr_sects) {
		*nr_zones = 0;
		return 0;
	}

	nrz = FUNC7(*nr_zones,
		  FUNC1(q, bdev->bd_part->nr_sects - sector));
	ret = FUNC4(bdev->bd_disk, FUNC6(bdev) + sector,
			       zones, &nrz);
	if (ret)
		return ret;

	for (i = 0; i < nrz; i++) {
		if (!FUNC5(bdev, zones))
			break;
		zones++;
	}

	*nr_zones = i;

	return 0;
}