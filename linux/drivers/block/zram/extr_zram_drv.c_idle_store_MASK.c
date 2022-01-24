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
struct zram {unsigned long disksize; int /*<<< orphan*/  init_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  ZRAM_IDLE ; 
 int /*<<< orphan*/  ZRAM_UNDER_WB ; 
 struct zram* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct zram*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct zram*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct zram*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct zram*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct zram*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct zram*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t len)
{
	struct zram *zram = FUNC0(dev);
	unsigned long nr_pages = zram->disksize >> PAGE_SHIFT;
	int index;

	if (!FUNC3(buf, "all"))
		return -EINVAL;

	FUNC1(&zram->init_lock);
	if (!FUNC2(zram)) {
		FUNC4(&zram->init_lock);
		return -EINVAL;
	}

	for (index = 0; index < nr_pages; index++) {
		/*
		 * Do not mark ZRAM_UNDER_WB slot as ZRAM_IDLE to close race.
		 * See the comment in writeback_store.
		 */
		FUNC7(zram, index);
		if (FUNC5(zram, index) &&
				!FUNC9(zram, index, ZRAM_UNDER_WB))
			FUNC6(zram, index, ZRAM_IDLE);
		FUNC8(zram, index);
	}

	FUNC4(&zram->init_lock);

	return len;
}