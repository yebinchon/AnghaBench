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
struct drbd_device {TYPE_1__* ldev; } ;
struct disk_conf {int discard_zeroes_if_aligned; } ;
struct TYPE_2__ {int /*<<< orphan*/  disk_conf; int /*<<< orphan*/  backing_bdev; } ;

/* Variables and functions */
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 struct disk_conf* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static bool FUNC5(struct drbd_device *device)
{
	struct request_queue *q = FUNC0(device->ldev->backing_bdev);
	struct disk_conf *dc;
	bool can_do;

	if (!FUNC1(q))
		return false;

	FUNC3();
	dc = FUNC2(device->ldev->disk_conf);
	can_do = dc->discard_zeroes_if_aligned;
	FUNC4();
	return can_do;
}