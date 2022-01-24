#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int discard_granularity; int /*<<< orphan*/  max_discard_sectors; } ;
struct request_queue {TYPE_2__ limits; } ;
struct drbd_device {TYPE_1__* ldev; } ;
struct block_device {int dummy; } ;
typedef  unsigned int sector_t ;
struct TYPE_3__ {struct block_device* backing_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKDEV_ZERO_NOUNMAP ; 
 int EE_TRIM ; 
 int EE_ZEROOUT ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int FUNC0 (struct block_device*) ; 
 struct request_queue* FUNC1 (struct block_device*) ; 
 int FUNC2 (struct block_device*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct block_device*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int,unsigned int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC6 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct drbd_device *device, sector_t start, unsigned int nr_sectors, int flags)
{
	struct block_device *bdev = device->ldev->backing_bdev;
	struct request_queue *q = FUNC1(bdev);
	sector_t tmp, nr;
	unsigned int max_discard_sectors, granularity;
	int alignment;
	int err = 0;

	if ((flags & EE_ZEROOUT) || !(flags & EE_TRIM))
		goto zero_out;

	/* Zero-sector (unknown) and one-sector granularities are the same.  */
	granularity = FUNC4(q->limits.discard_granularity >> 9, 1U);
	alignment = (FUNC0(bdev) >> 9) % granularity;

	max_discard_sectors = FUNC5(q->limits.max_discard_sectors, (1U << 22));
	max_discard_sectors -= max_discard_sectors % granularity;
	if (FUNC7(!max_discard_sectors))
		goto zero_out;

	if (nr_sectors < granularity)
		goto zero_out;

	tmp = start;
	if (FUNC6(tmp, granularity) != alignment) {
		if (nr_sectors < 2*granularity)
			goto zero_out;
		/* start + gran - (start + gran - align) % gran */
		tmp = start + granularity - alignment;
		tmp = start + granularity - FUNC6(tmp, granularity);

		nr = tmp - start;
		/* don't flag BLKDEV_ZERO_NOUNMAP, we don't know how many
		 * layers are below us, some may have smaller granularity */
		err |= FUNC3(bdev, start, nr, GFP_NOIO, 0);
		nr_sectors -= nr;
		start = tmp;
	}
	while (nr_sectors >= max_discard_sectors) {
		err |= FUNC2(bdev, start, max_discard_sectors, GFP_NOIO, 0);
		nr_sectors -= max_discard_sectors;
		start += max_discard_sectors;
	}
	if (nr_sectors) {
		/* max_discard_sectors is unsigned int (and a multiple of
		 * granularity, we made sure of that above already);
		 * nr is < max_discard_sectors;
		 * I don't need sector_div here, even though nr is sector_t */
		nr = nr_sectors;
		nr -= (unsigned int)nr % granularity;
		if (nr) {
			err |= FUNC2(bdev, start, nr, GFP_NOIO, 0);
			nr_sectors -= nr;
			start += nr;
		}
	}
 zero_out:
	if (nr_sectors) {
		err |= FUNC3(bdev, start, nr_sectors, GFP_NOIO,
				(flags & EE_TRIM) ? 0 : BLKDEV_ZERO_NOUNMAP);
	}
	return err != 0;
}