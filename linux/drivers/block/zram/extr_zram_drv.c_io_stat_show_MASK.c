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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  notify_free; int /*<<< orphan*/  invalid_io; int /*<<< orphan*/  failed_writes; int /*<<< orphan*/  failed_reads; } ;
struct zram {int /*<<< orphan*/  init_lock; TYPE_1__ stats; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct zram* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct zram *zram = FUNC1(dev);
	ssize_t ret;

	FUNC2(&zram->init_lock);
	ret = FUNC3(buf, PAGE_SIZE,
			"%8llu %8llu %8llu %8llu\n",
			(u64)FUNC0(&zram->stats.failed_reads),
			(u64)FUNC0(&zram->stats.failed_writes),
			(u64)FUNC0(&zram->stats.invalid_io),
			(u64)FUNC0(&zram->stats.notify_free));
	FUNC4(&zram->init_lock);

	return ret;
}