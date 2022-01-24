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
struct elevator_queue {struct bfq_data* elevator_data; } ;
struct bfq_data {unsigned long bfq_max_budget; unsigned long bfq_user_max_budget; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned long INT_MAX ; 
 unsigned long FUNC0 (struct bfq_data*) ; 
 int FUNC1 (unsigned long*,char const*) ; 

__attribute__((used)) static ssize_t FUNC2(struct elevator_queue *e,
				    const char *page, size_t count)
{
	struct bfq_data *bfqd = e->elevator_data;
	unsigned long __data;
	int ret;

	ret = FUNC1(&__data, (page));
	if (ret)
		return ret;

	if (__data == 0)
		bfqd->bfq_max_budget = FUNC0(bfqd);
	else {
		if (__data > INT_MAX)
			__data = INT_MAX;
		bfqd->bfq_max_budget = __data;
	}

	bfqd->bfq_user_max_budget = __data;

	return count;
}