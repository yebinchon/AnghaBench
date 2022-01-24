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
struct gendisk {int dummy; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct block_device*,int) ; 
 struct block_device* FUNC1 (struct gendisk*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct block_device*) ; 

int FUNC4(struct gendisk *disk, int partno)
{
	int res = 0;
	struct block_device *bdev = FUNC1(disk, partno);
	if (bdev) {
		FUNC3(bdev);
		res = FUNC0(bdev, true);
		FUNC2(bdev);
	}
	return res;
}