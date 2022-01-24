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
struct drbd_device {int /*<<< orphan*/  flags; int /*<<< orphan*/  ap_bio_cnt; int /*<<< orphan*/  suspend_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_IO ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_device*) ; 
 scalar_t__ FUNC3 (struct drbd_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC5(struct drbd_device *device)
{
	int mxb = FUNC1(device);

	if (FUNC3(device))
		return false;
	if (FUNC0(&device->suspend_cnt))
		return false;

	/* to avoid potential deadlock or bitmap corruption,
	 * in various places, we only allow new application io
	 * to start during "stable" states. */

	/* no new io accepted when attaching or detaching the disk */
	if (!FUNC2(device))
		return false;

	/* since some older kernels don't have atomic_add_unless,
	 * and we are within the spinlock anyways, we have this workaround.  */
	if (FUNC0(&device->ap_bio_cnt) > mxb)
		return false;
	if (FUNC4(BITMAP_IO, &device->flags))
		return false;
	return true;
}