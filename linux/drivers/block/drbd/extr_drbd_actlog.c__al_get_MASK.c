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
struct lc_element {int dummy; } ;
struct drbd_device {int /*<<< orphan*/  al_lock; int /*<<< orphan*/  act_log; int /*<<< orphan*/  al_wait; } ;
struct bm_extent {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BME_PRIORITY ; 
 struct bm_extent* FUNC0 (struct drbd_device*,unsigned int) ; 
 struct lc_element* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 struct lc_element* FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct lc_element *FUNC7(struct drbd_device *device, unsigned int enr, bool nonblock)
{
	struct lc_element *al_ext;
	struct bm_extent *bm_ext;
	int wake;

	FUNC3(&device->al_lock);
	bm_ext = FUNC0(device, enr);
	if (bm_ext) {
		wake = !FUNC5(BME_PRIORITY, &bm_ext->flags);
		FUNC4(&device->al_lock);
		if (wake)
			FUNC6(&device->al_wait);
		return NULL;
	}
	if (nonblock)
		al_ext = FUNC2(device->act_log, enr);
	else
		al_ext = FUNC1(device->act_log, enr);
	FUNC4(&device->al_lock);
	return al_ext;
}