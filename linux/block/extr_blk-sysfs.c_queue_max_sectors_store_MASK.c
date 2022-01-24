#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long max_sectors; scalar_t__ max_dev_sectors; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; TYPE_2__* backing_dev_info; TYPE_1__ limits; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {unsigned long io_pages; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int PAGE_SHIFT ; 
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (struct request_queue*) ; 
 scalar_t__ FUNC2 (unsigned long*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC5(struct request_queue *q, const char *page, size_t count)
{
	unsigned long max_sectors_kb,
		max_hw_sectors_kb = FUNC1(q) >> 1,
			page_kb = 1 << (PAGE_SHIFT - 10);
	ssize_t ret = FUNC2(&max_sectors_kb, page, count);

	if (ret < 0)
		return ret;

	max_hw_sectors_kb = FUNC0(max_hw_sectors_kb, (unsigned long)
					 q->limits.max_dev_sectors >> 1);

	if (max_sectors_kb > max_hw_sectors_kb || max_sectors_kb < page_kb)
		return -EINVAL;

	FUNC3(&q->queue_lock);
	q->limits.max_sectors = max_sectors_kb << 1;
	q->backing_dev_info->io_pages = max_sectors_kb >> (PAGE_SHIFT - 10);
	FUNC4(&q->queue_lock);

	return ret;
}