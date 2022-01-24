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
struct child_latency_info {int /*<<< orphan*/  scale_cookie; } ;
struct TYPE_4__ {TYPE_1__* q; } ;
struct blk_iolatency {TYPE_2__ rqos; } ;
struct TYPE_3__ {unsigned long nr_requests; } ;

/* Variables and functions */
 unsigned long DEFAULT_SCALE_COOKIE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ *) ; 
 unsigned long FUNC6 (unsigned long,int) ; 

__attribute__((used)) static void FUNC7(struct blk_iolatency *blkiolat,
				struct child_latency_info *lat_info,
				bool up)
{
	unsigned long qd = blkiolat->rqos.q->nr_requests;
	unsigned long scale = FUNC6(qd, up);
	unsigned long old = FUNC3(&lat_info->scale_cookie);
	unsigned long max_scale = qd << 1;
	unsigned long diff = 0;

	if (old < DEFAULT_SCALE_COOKIE)
		diff = DEFAULT_SCALE_COOKIE - old;

	if (up) {
		if (scale + old > DEFAULT_SCALE_COOKIE)
			FUNC4(&lat_info->scale_cookie,
				   DEFAULT_SCALE_COOKIE);
		else if (diff > qd)
			FUNC2(&lat_info->scale_cookie);
		else
			FUNC0(scale, &lat_info->scale_cookie);
	} else {
		/*
		 * We don't want to dig a hole so deep that it takes us hours to
		 * dig out of it.  Just enough that we don't throttle/unthrottle
		 * with jagged workloads but can still unthrottle once pressure
		 * has sufficiently dissipated.
		 */
		if (diff > qd) {
			if (diff < max_scale)
				FUNC1(&lat_info->scale_cookie);
		} else {
			FUNC5(scale, &lat_info->scale_cookie);
		}
	}
}