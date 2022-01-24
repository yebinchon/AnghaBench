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
struct request_queue {unsigned int nr_zones; int /*<<< orphan*/  seq_zones_bitmap; int /*<<< orphan*/  seq_zones_wlock; int /*<<< orphan*/  node; } ;
struct gendisk {int /*<<< orphan*/  disk_name; struct request_queue* queue; } ;
struct blk_zone {scalar_t__ type; } ;
typedef  unsigned int sector_t ;

/* Variables and functions */
 scalar_t__ BLK_ZONE_TYPE_CONVENTIONAL ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (struct request_queue*,int /*<<< orphan*/ ) ; 
 unsigned long* FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 struct blk_zone* FUNC3 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*) ; 
 unsigned int FUNC8 (struct request_queue*) ; 
 int FUNC9 (struct gendisk*,unsigned int,struct blk_zone*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC12 (struct blk_zone*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 unsigned int FUNC14 () ; 
 unsigned int FUNC15 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,unsigned long*) ; 

int FUNC20(struct gendisk *disk)
{
	struct request_queue *q = disk->queue;
	unsigned int nr_zones = FUNC1(q, FUNC10(disk));
	unsigned long *seq_zones_wlock = NULL, *seq_zones_bitmap = NULL;
	unsigned int i, rep_nr_zones = 0, z = 0, nrz;
	struct blk_zone *zones = NULL;
	unsigned int noio_flag;
	sector_t sector = 0;
	int ret = 0;

	/*
	 * BIO based queues do not use a scheduler so only q->nr_zones
	 * needs to be updated so that the sysfs exposed value is correct.
	 */
	if (!FUNC17(q)) {
		q->nr_zones = nr_zones;
		return 0;
	}

	/*
	 * Ensure that all memory allocations in this context are done as
	 * if GFP_NOIO was specified.
	 */
	noio_flag = FUNC14();

	if (!FUNC7(q) || !nr_zones) {
		nr_zones = 0;
		goto update;
	}

	/* Allocate bitmaps */
	ret = -ENOMEM;
	seq_zones_wlock = FUNC2(q->node, nr_zones);
	if (!seq_zones_wlock)
		goto out;
	seq_zones_bitmap = FUNC2(q->node, nr_zones);
	if (!seq_zones_bitmap)
		goto out;

	/* Get zone information and initialize seq_zones_bitmap */
	rep_nr_zones = nr_zones;
	zones = FUNC3(&rep_nr_zones);
	if (!zones)
		goto out;

	while (z < nr_zones) {
		nrz = FUNC15(nr_zones - z, rep_nr_zones);
		ret = FUNC9(disk, sector, zones, &nrz);
		if (ret)
			goto out;
		if (!nrz)
			break;
		for (i = 0; i < nrz; i++) {
			if (zones[i].type != BLK_ZONE_TYPE_CONVENTIONAL)
				FUNC18(z, seq_zones_bitmap);
			z++;
		}
		sector += nrz * FUNC8(q);
	}

	if (FUNC0(z != nr_zones)) {
		ret = -EIO;
		goto out;
	}

update:
	/*
	 * Install the new bitmaps, making sure the queue is stopped and
	 * all I/Os are completed (i.e. a scheduler is not referencing the
	 * bitmaps).
	 */
	FUNC4(q);
	q->nr_zones = nr_zones;
	FUNC19(q->seq_zones_wlock, seq_zones_wlock);
	FUNC19(q->seq_zones_bitmap, seq_zones_bitmap);
	FUNC5(q);

out:
	FUNC13(noio_flag);

	FUNC12(zones);
	FUNC11(seq_zones_wlock);
	FUNC11(seq_zones_bitmap);

	if (ret) {
		FUNC16("%s: failed to revalidate zones\n", disk->disk_name);
		FUNC4(q);
		FUNC6(q);
		FUNC5(q);
	}

	return ret;
}