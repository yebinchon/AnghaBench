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
struct throtl_service_queue {int dummy; } ;
struct TYPE_2__ {struct throtl_service_queue* parent_sq; } ;
struct throtl_grp {int /*<<< orphan*/ ** iops; int /*<<< orphan*/ ** bps; TYPE_1__ service_queue; } ;

/* Variables and functions */
 size_t LIMIT_LOW ; 
 size_t READ ; 
 size_t WRITE ; 
 unsigned long FUNC0 (struct throtl_grp*) ; 
 struct throtl_grp* FUNC1 (struct throtl_service_queue*) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC3(struct throtl_grp *tg)
{
	struct throtl_service_queue *parent_sq;
	struct throtl_grp *parent = tg;
	unsigned long ret = FUNC0(tg);

	while (true) {
		parent_sq = parent->service_queue.parent_sq;
		parent = FUNC1(parent_sq);
		if (!parent)
			break;

		/*
		 * The parent doesn't have low limit, it always reaches low
		 * limit. Its overflow time is useless for children
		 */
		if (!parent->bps[READ][LIMIT_LOW] &&
		    !parent->iops[READ][LIMIT_LOW] &&
		    !parent->bps[WRITE][LIMIT_LOW] &&
		    !parent->iops[WRITE][LIMIT_LOW])
			continue;
		if (FUNC2(FUNC0(parent), ret))
			ret = FUNC0(parent);
	}
	return ret;
}