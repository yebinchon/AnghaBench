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
struct rq_wait {int /*<<< orphan*/  inflight; } ;
struct rq_qos {int /*<<< orphan*/  q; } ;
struct iolatency_grp {struct rq_wait rq_wait; } ;
struct TYPE_2__ {int /*<<< orphan*/  use_delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iolat_acquire_inflight ; 
 int /*<<< orphan*/  iolat_cleanup_cb ; 
 TYPE_1__* FUNC4 (struct iolatency_grp*) ; 
 int /*<<< orphan*/  FUNC5 (struct rq_wait*,struct iolatency_grp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rq_qos *rqos,
				       struct iolatency_grp *iolat,
				       bool issue_as_root,
				       bool use_memdelay)
{
	struct rq_wait *rqw = &iolat->rq_wait;
	unsigned use_delay = FUNC1(&FUNC4(iolat)->use_delay);

	if (use_delay)
		FUNC2(rqos->q, use_memdelay);

	/*
	 * To avoid priority inversions we want to just take a slot if we are
	 * issuing as root.  If we're being killed off there's no point in
	 * delaying things, we may have been killed by OOM so throttling may
	 * make recovery take even longer, so just let the IO's through so the
	 * task can go away.
	 */
	if (issue_as_root || FUNC3(current)) {
		FUNC0(&rqw->inflight);
		return;
	}

	FUNC5(rqw, iolat, iolat_acquire_inflight, iolat_cleanup_cb);
}