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
struct zram {int claim; int /*<<< orphan*/  disk; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct block_device {int /*<<< orphan*/  bd_mutex; scalar_t__ bd_openers; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct block_device* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 struct zram* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct block_device*) ; 
 int FUNC4 (char const*,int,unsigned short*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct zram*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t len)
{
	int ret;
	unsigned short do_reset;
	struct zram *zram;
	struct block_device *bdev;

	ret = FUNC4(buf, 10, &do_reset);
	if (ret)
		return ret;

	if (!do_reset)
		return -EINVAL;

	zram = FUNC2(dev);
	bdev = FUNC0(zram->disk, 0);
	if (!bdev)
		return -ENOMEM;

	FUNC5(&bdev->bd_mutex);
	/* Do not reset an active device or claimed device */
	if (bdev->bd_openers || zram->claim) {
		FUNC6(&bdev->bd_mutex);
		FUNC1(bdev);
		return -EBUSY;
	}

	/* From now on, anyone can't open /dev/zram[0-9] */
	zram->claim = true;
	FUNC6(&bdev->bd_mutex);

	/* Make sure all the pending I/O are finished */
	FUNC3(bdev);
	FUNC8(zram);
	FUNC7(zram->disk);
	FUNC1(bdev);

	FUNC5(&bdev->bd_mutex);
	zram->claim = false;
	FUNC6(&bdev->bd_mutex);

	return len;
}