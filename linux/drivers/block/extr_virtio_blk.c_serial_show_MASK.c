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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 size_t PAGE_SIZE ; 
 size_t VIRTIO_BLK_ID_BYTES ; 
 struct gendisk* FUNC1 (struct device*) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (struct gendisk*,char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			   struct device_attribute *attr, char *buf)
{
	struct gendisk *disk = FUNC1(dev);
	int err;

	/* sysfs gives us a PAGE_SIZE buffer */
	FUNC0(PAGE_SIZE < VIRTIO_BLK_ID_BYTES);

	buf[VIRTIO_BLK_ID_BYTES] = '\0';
	err = FUNC3(disk, buf);
	if (!err)
		return FUNC2(buf);

	if (err == -EIO) /* Unsupported? Make it empty. */
		return 0;

	return err;
}