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
struct request_queue {int dummy; } ;
struct block_device {int dummy; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  int sector_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENXIO ; 
 int EPERM ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct request_queue* FUNC2 (struct block_device*) ; 
 scalar_t__ FUNC3 (struct block_device*) ; 
 int FUNC4 (struct bio*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,struct block_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bio* FUNC7 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 unsigned int FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct block_device *bdev,
		sector_t sector, sector_t nr_sects, gfp_t gfp_mask,
		struct bio **biop)
{
	struct request_queue *q = FUNC2(bdev);
	struct bio *bio = *biop;
	int bi_size = 0;
	unsigned int sz;

	if (!q)
		return -ENXIO;

	if (FUNC3(bdev))
		return -EPERM;

	while (nr_sects != 0) {
		bio = FUNC7(bio, FUNC1(nr_sects),
				   gfp_mask);
		bio->bi_iter.bi_sector = sector;
		FUNC5(bio, bdev);
		FUNC6(bio, REQ_OP_WRITE, 0);

		while (nr_sects != 0) {
			sz = FUNC9((sector_t) PAGE_SIZE, nr_sects << 9);
			bi_size = FUNC4(bio, FUNC0(0), sz, 0);
			nr_sects -= bi_size >> 9;
			sector += bi_size >> 9;
			if (bi_size < sz)
				break;
		}
		FUNC8();
	}

	*biop = bio;
	return 0;
}