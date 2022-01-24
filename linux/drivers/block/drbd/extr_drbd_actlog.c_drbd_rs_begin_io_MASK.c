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
struct drbd_device {int /*<<< orphan*/  al_lock; int /*<<< orphan*/  al_wait; int /*<<< orphan*/  resync_locked; int /*<<< orphan*/  resync; } ;
struct bm_extent {scalar_t__ flags; int /*<<< orphan*/  lce; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int AL_EXT_PER_BM_SECT ; 
 int /*<<< orphan*/  BME_LOCKED ; 
 int /*<<< orphan*/  BME_PRIORITY ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINTR ; 
 int HZ ; 
 struct bm_extent* FUNC1 (struct drbd_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_device*,unsigned int) ; 
 int FUNC3 (struct drbd_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct drbd_device *device, sector_t sector)
{
	unsigned int enr = FUNC0(sector);
	struct bm_extent *bm_ext;
	int i, sig;
	bool sa;

retry:
	sig = FUNC10(device->al_wait,
			(bm_ext = FUNC1(device, enr)));
	if (sig)
		return -EINTR;

	if (FUNC9(BME_LOCKED, &bm_ext->flags))
		return 0;

	/* step aside only while we are above c-min-rate; unless disabled. */
	sa = FUNC3(device);

	for (i = 0; i < AL_EXT_PER_BM_SECT; i++) {
		sig = FUNC10(device->al_wait,
					       !FUNC2(device, enr * AL_EXT_PER_BM_SECT + i) ||
					       (sa && FUNC9(BME_PRIORITY, &bm_ext->flags)));

		if (sig || (sa && FUNC9(BME_PRIORITY, &bm_ext->flags))) {
			FUNC7(&device->al_lock);
			if (FUNC4(device->resync, &bm_ext->lce) == 0) {
				bm_ext->flags = 0; /* clears BME_NO_WRITES and eventually BME_PRIORITY */
				device->resync_locked--;
				FUNC11(&device->al_wait);
			}
			FUNC8(&device->al_lock);
			if (sig)
				return -EINTR;
			if (FUNC5(HZ/10))
				return -EINTR;
			goto retry;
		}
	}
	FUNC6(BME_LOCKED, &bm_ext->flags);
	return 0;
}