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
typedef  size_t u8 ;
struct virtio_blk {int /*<<< orphan*/  vdev; } ;
struct gendisk {struct virtio_blk* private_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 size_t FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct gendisk* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 char** virtblk_cache_types ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct gendisk *disk = FUNC2(dev);
	struct virtio_blk *vblk = disk->private_data;
	u8 writeback = FUNC4(vblk->vdev);

	FUNC1(writeback >= FUNC0(virtblk_cache_types));
	return FUNC3(buf, 40, "%s\n", virtblk_cache_types[writeback]);
}