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
struct drbd_device {unsigned long rs_failed; int /*<<< orphan*/  al_wait; int /*<<< orphan*/  al_lock; } ;
typedef  enum update_sync_bits_mode { ____Placeholder_update_sync_bits_mode } update_sync_bits_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long BM_BLOCKS_PER_BM_EXT_MASK ; 
 int RECORD_RS_FAILED ; 
 int SET_IN_SYNC ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_device*,unsigned long) ; 
 unsigned long FUNC2 (struct drbd_device*,unsigned long,unsigned long) ; 
 unsigned long FUNC3 (struct drbd_device*,unsigned long,unsigned long) ; 
 unsigned long FUNC4 (struct drbd_device*,unsigned long,unsigned long) ; 
 unsigned long FUNC5 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drbd_device*,int) ; 
 unsigned long FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC10 (struct drbd_device*,int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct drbd_device *device,
		unsigned long sbnr, unsigned long ebnr,
		enum update_sync_bits_mode mode)
{
	/*
	 * We keep a count of set bits per resync-extent in the ->rs_left
	 * caching member, so we need to loop and work within the resync extent
	 * alignment. Typically this loop will execute exactly once.
	 */
	unsigned long flags;
	unsigned long count = 0;
	unsigned int cleared = 0;
	while (sbnr <= ebnr) {
		/* set temporary boundary bit number to last bit number within
		 * the resync extent of the current start bit number,
		 * but cap at provided end bit number */
		unsigned long tbnr = FUNC7(ebnr, sbnr | BM_BLOCKS_PER_BM_EXT_MASK);
		unsigned long c;

		if (mode == RECORD_RS_FAILED)
			/* Only called from drbd_rs_failed_io(), bits
			 * supposedly still set.  Recount, maybe some
			 * of the bits have been successfully cleared
			 * by application IO meanwhile.
			 */
			c = FUNC3(device, sbnr, tbnr);
		else if (mode == SET_IN_SYNC)
			c = FUNC2(device, sbnr, tbnr);
		else /* if (mode == SET_OUT_OF_SYNC) */
			c = FUNC4(device, sbnr, tbnr);

		if (c) {
			FUNC8(&device->al_lock, flags);
			cleared += FUNC10(device, FUNC0(sbnr), c, mode);
			FUNC9(&device->al_lock, flags);
			count += c;
		}
		sbnr = tbnr + 1;
	}
	if (count) {
		if (mode == SET_IN_SYNC) {
			unsigned long still_to_go = FUNC5(device);
			bool rs_is_done = (still_to_go <= device->rs_failed);
			FUNC1(device, still_to_go);
			if (cleared || rs_is_done)
				FUNC6(device, rs_is_done);
		} else if (mode == RECORD_RS_FAILED)
			device->rs_failed += count;
		FUNC11(&device->al_wait);
	}
	return count;
}