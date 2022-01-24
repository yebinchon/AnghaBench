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
struct drbd_device {int /*<<< orphan*/  this_bdev; } ;
typedef  int sector_t ;
typedef  enum update_sync_bits_mode { ____Placeholder_update_sync_bits_mode } update_sync_bits_mode ;

/* Variables and functions */
 int BM_SECT_PER_BIT ; 
 unsigned long FUNC0 (int) ; 
 int SET_IN_SYNC ; 
 int SET_OUT_OF_SYNC ; 
 int /*<<< orphan*/ * drbd_change_sync_fname ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_device*,char*,int /*<<< orphan*/ ,unsigned long long,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct drbd_device*) ; 
 scalar_t__ FUNC7 (int) ; 
 unsigned long FUNC8 (struct drbd_device*,unsigned long,unsigned long,int) ; 

int FUNC9(struct drbd_device *device, sector_t sector, int size,
		enum update_sync_bits_mode mode)
{
	/* Is called from worker and receiver context _only_ */
	unsigned long sbnr, ebnr, lbnr;
	unsigned long count = 0;
	sector_t esector, nr_sectors;

	/* This would be an empty REQ_PREFLUSH, be silent. */
	if ((mode == SET_OUT_OF_SYNC) && size == 0)
		return 0;

	if (!FUNC5(size)) {
		FUNC1(device, "%s: sector=%llus size=%d nonsense!\n",
				drbd_change_sync_fname[mode],
				(unsigned long long)sector, size);
		return 0;
	}

	if (!FUNC4(device))
		return 0; /* no disk, no metadata, no bitmap to manipulate bits in */

	nr_sectors = FUNC2(device->this_bdev);
	esector = sector + (size >> 9) - 1;

	if (!FUNC3(sector < nr_sectors))
		goto out;
	if (!FUNC3(esector < nr_sectors))
		esector = nr_sectors - 1;

	lbnr = FUNC0(nr_sectors-1);

	if (mode == SET_IN_SYNC) {
		/* Round up start sector, round down end sector.  We make sure
		 * we only clear full, aligned, BM_BLOCK_SIZE blocks. */
		if (FUNC7(esector < BM_SECT_PER_BIT-1))
			goto out;
		if (FUNC7(esector == (nr_sectors-1)))
			ebnr = lbnr;
		else
			ebnr = FUNC0(esector - (BM_SECT_PER_BIT-1));
		sbnr = FUNC0(sector + BM_SECT_PER_BIT-1);
	} else {
		/* We set it out of sync, or record resync failure.
		 * Should not round anything here. */
		sbnr = FUNC0(sector);
		ebnr = FUNC0(esector);
	}

	count = FUNC8(device, sbnr, ebnr, mode);
out:
	FUNC6(device);
	return count;
}