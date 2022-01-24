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
struct TYPE_2__ {scalar_t__ disk; } ;
struct drbd_device {int /*<<< orphan*/  this_bdev; TYPE_1__ state; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_device*,int) ; 
 scalar_t__ D_INCONSISTENT ; 
 scalar_t__ D_UP_TO_DATE ; 
 scalar_t__ FUNC2 (struct drbd_device*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct drbd_device *device, sector_t sector, int size)
{
	unsigned long sbnr, ebnr;
	sector_t esector, nr_sectors;

	if (device->state.disk == D_UP_TO_DATE)
		return true;
	if (device->state.disk != D_INCONSISTENT)
		return false;
	esector = sector + (size >> 9) - 1;
	nr_sectors = FUNC3(device->this_bdev);
	FUNC1(device, sector  < nr_sectors);
	FUNC1(device, esector < nr_sectors);

	sbnr = FUNC0(sector);
	ebnr = FUNC0(esector);

	return FUNC2(device, sbnr, ebnr) == 0;
}