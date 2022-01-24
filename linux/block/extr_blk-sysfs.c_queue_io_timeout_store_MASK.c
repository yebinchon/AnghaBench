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
struct request_queue {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static ssize_t FUNC3(struct request_queue *q, const char *page,
				  size_t count)
{
	unsigned int val;
	int err;

	err = FUNC1(page, 10, &val);
	if (err || val == 0)
		return -EINVAL;

	FUNC0(q, FUNC2(val));

	return count;
}