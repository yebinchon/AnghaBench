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
struct gendisk {struct disk_events* ev; } ;
struct disk_events {scalar_t__ block; int /*<<< orphan*/  lock; int /*<<< orphan*/  dwork; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 unsigned long FUNC1 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  system_freezable_power_efficient_wq ; 

__attribute__((used)) static void FUNC5(struct gendisk *disk, bool check_now)
{
	struct disk_events *ev = disk->ev;
	unsigned long intv;
	unsigned long flags;

	FUNC3(&ev->lock, flags);

	if (FUNC0(ev->block <= 0))
		goto out_unlock;

	if (--ev->block)
		goto out_unlock;

	intv = FUNC1(disk);
	if (check_now)
		FUNC2(system_freezable_power_efficient_wq,
				&ev->dwork, 0);
	else if (intv)
		FUNC2(system_freezable_power_efficient_wq,
				&ev->dwork, intv);
out_unlock:
	FUNC4(&ev->lock, flags);
}