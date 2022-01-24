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
typedef  int /*<<< orphan*/  u64 ;
struct zram {int limit_pages; int /*<<< orphan*/  init_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 struct zram* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t len)
{
	u64 limit;
	char *tmp;
	struct zram *zram = FUNC1(dev);

	limit = FUNC3(buf, &tmp);
	if (buf == tmp) /* no chars parsed, invalid input */
		return -EINVAL;

	FUNC2(&zram->init_lock);
	zram->limit_pages = FUNC0(limit) >> PAGE_SHIFT;
	FUNC4(&zram->init_lock);

	return len;
}