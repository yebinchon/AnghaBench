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
struct drbd_device {int /*<<< orphan*/  ap_bio_cnt; int /*<<< orphan*/  misc_wait; int /*<<< orphan*/  suspend_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(struct drbd_device *device)
{
	FUNC0(&device->suspend_cnt);
	if (FUNC2(device))
		return;
	FUNC3(device->misc_wait, !FUNC1(&device->ap_bio_cnt));
}