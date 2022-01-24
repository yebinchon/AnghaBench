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
struct TYPE_2__ {int /*<<< orphan*/  max_used_pages; } ;
struct zram {int /*<<< orphan*/  init_lock; int /*<<< orphan*/  mem_pool; TYPE_1__ stats; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct zram* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct zram*) ; 
 int FUNC4 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t len)
{
	int err;
	unsigned long val;
	struct zram *zram = FUNC1(dev);

	err = FUNC4(buf, 10, &val);
	if (err || val != 0)
		return -EINVAL;

	FUNC2(&zram->init_lock);
	if (FUNC3(zram)) {
		FUNC0(&zram->stats.max_used_pages,
				FUNC6(zram->mem_pool));
	}
	FUNC5(&zram->init_lock);

	return len;
}