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
struct ps3_storage_device {size_t region_idx; int blk_size; TYPE_1__* regions; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 struct ps3_storage_device* ps3flash_dev ; 

__attribute__((used)) static loff_t FUNC1(struct file *file, loff_t offset, int origin)
{
	struct ps3_storage_device *dev = ps3flash_dev;
	return FUNC0(file, offset, origin, MAX_LFS_FILESIZE,
			dev->regions[dev->region_idx].size*dev->blk_size);
}