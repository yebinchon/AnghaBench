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
struct throtl_service_queue {scalar_t__* nr_queued; } ;
struct throtl_grp {struct throtl_service_queue service_queue; int /*<<< orphan*/  disptime; } ;

/* Variables and functions */
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct throtl_grp*) ; 
 int /*<<< orphan*/  FUNC1 (struct throtl_grp*) ; 
 scalar_t__ FUNC2 (struct throtl_grp*) ; 
 unsigned int throtl_quantum ; 
 struct throtl_grp* FUNC3 (struct throtl_service_queue*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct throtl_service_queue *parent_sq)
{
	unsigned int nr_disp = 0;

	while (1) {
		struct throtl_grp *tg = FUNC3(parent_sq);
		struct throtl_service_queue *sq;

		if (!tg)
			break;

		if (FUNC4(jiffies, tg->disptime))
			break;

		FUNC1(tg);

		nr_disp += FUNC2(tg);

		sq = &tg->service_queue;
		if (sq->nr_queued[0] || sq->nr_queued[1])
			FUNC0(tg);

		if (nr_disp >= throtl_quantum)
			break;
	}

	return nr_disp;
}