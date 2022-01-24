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
 int FUNC0 (struct request_queue*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 

ssize_t FUNC3(struct request_queue *q, const char *name,
			  size_t count)
{
	int ret;

	if (!FUNC2(q) || !FUNC1(q))
		return count;

	ret = FUNC0(q, name);
	if (!ret)
		return count;

	return ret;
}