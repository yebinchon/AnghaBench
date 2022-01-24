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
typedef  int u64 ;
struct zram {int disksize; int /*<<< orphan*/  init_lock; int /*<<< orphan*/  disk; struct zcomp* comp; int /*<<< orphan*/  compressor; } ;
struct zcomp {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 size_t EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct zcomp*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct zcomp*) ; 
 int SECTOR_SHIFT ; 
 struct zram* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct zram*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct zcomp* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct zram*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct zram*,int) ; 

__attribute__((used)) static ssize_t FUNC15(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t len)
{
	u64 disksize;
	struct zcomp *comp;
	struct zram *zram = FUNC3(dev);
	int err;

	disksize = FUNC6(buf, NULL);
	if (!disksize)
		return -EINVAL;

	FUNC4(&zram->init_lock);
	if (FUNC5(zram)) {
		FUNC8("Cannot change disksize for initialized device\n");
		err = -EBUSY;
		goto out_unlock;
	}

	disksize = FUNC1(disksize);
	if (!FUNC13(zram, disksize)) {
		err = -ENOMEM;
		goto out_unlock;
	}

	comp = FUNC12(zram->compressor);
	if (FUNC0(comp)) {
		FUNC7("Cannot initialise %s compressing backend\n",
				zram->compressor);
		err = FUNC2(comp);
		goto out_free_meta;
	}

	zram->comp = comp;
	zram->disksize = disksize;
	FUNC10(zram->disk, zram->disksize >> SECTOR_SHIFT);

	FUNC9(zram->disk);
	FUNC11(&zram->init_lock);

	return len;

out_free_meta:
	FUNC14(zram, disksize);
out_unlock:
	FUNC11(&zram->init_lock);
	return err;
}