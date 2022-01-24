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
struct disk_events {unsigned int clearing; int /*<<< orphan*/  lock; int /*<<< orphan*/  dwork; int /*<<< orphan*/  block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_freezable_power_efficient_wq ; 

void FUNC3(struct gendisk *disk, unsigned int mask)
{
	struct disk_events *ev = disk->ev;

	if (!ev)
		return;

	FUNC1(&ev->lock);
	ev->clearing |= mask;
	if (!ev->block)
		FUNC0(system_freezable_power_efficient_wq,
				&ev->dwork, 0);
	FUNC2(&ev->lock);
}