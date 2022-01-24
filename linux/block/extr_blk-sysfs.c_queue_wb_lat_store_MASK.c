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
struct rq_qos {int dummy; } ;
struct request_queue {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int s64 ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 scalar_t__ FUNC4 (int*,char const*) ; 
 int FUNC5 (struct request_queue*) ; 
 int FUNC6 (struct request_queue*) ; 
 scalar_t__ FUNC7 (struct request_queue*) ; 
 struct rq_qos* FUNC8 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct request_queue*,int) ; 

__attribute__((used)) static ssize_t FUNC10(struct request_queue *q, const char *page,
				  size_t count)
{
	struct rq_qos *rqos;
	ssize_t ret;
	s64 val;

	ret = FUNC4(&val, page);
	if (ret < 0)
		return ret;
	if (val < -1)
		return -EINVAL;

	rqos = FUNC8(q);
	if (!rqos) {
		ret = FUNC7(q);
		if (ret)
			return ret;
	}

	if (val == -1)
		val = FUNC5(q);
	else if (val >= 0)
		val *= 1000ULL;

	if (FUNC6(q) == val)
		return count;

	/*
	 * Ensure that the queue is idled, in case the latency update
	 * ends up either enabling or disabling wbt completely. We can't
	 * have IO inflight if that happens.
	 */
	FUNC0(q);
	FUNC1(q);

	FUNC9(q, val);

	FUNC3(q);
	FUNC2(q);

	return count;
}