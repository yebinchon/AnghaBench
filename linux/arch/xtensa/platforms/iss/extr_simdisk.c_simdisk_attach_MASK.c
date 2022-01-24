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
struct simdisk {int fd; int size; char const* filename; int /*<<< orphan*/  lock; TYPE_1__* gd; } ;
struct TYPE_2__ {int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  O_RDWR ; 
 int SECTOR_SHIFT ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct simdisk *dev, const char *filename)
{
	int err = 0;

	filename = FUNC1(filename, GFP_KERNEL);
	if (filename == NULL)
		return -ENOMEM;

	FUNC7(&dev->lock);

	if (dev->fd != -1) {
		err = -EBUSY;
		goto out;
	}
	dev->fd = FUNC6(filename, O_RDWR, 0);
	if (dev->fd == -1) {
		FUNC2("SIMDISK: Can't open %s: %d\n", filename, errno);
		err = -ENODEV;
		goto out;
	}
	dev->size = FUNC5(dev->fd, 0, SEEK_END);
	FUNC4(dev->gd, dev->size >> SECTOR_SHIFT);
	dev->filename = filename;
	FUNC3("SIMDISK: %s=%s\n", dev->gd->disk_name, dev->filename);
out:
	if (err)
		FUNC0(filename);
	FUNC8(&dev->lock);

	return err;
}