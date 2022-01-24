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
struct blkg_policy_data {int dummy; } ;
struct throtl_grp {struct blkg_policy_data pd; void* idletime_threshold_conf; void* idletime_threshold; void* latency_target_conf; void* latency_target; void*** iops_conf; void*** bps_conf; void*** iops; void*** bps; int /*<<< orphan*/  rb_node; int /*<<< orphan*/ * qnode_on_parent; int /*<<< orphan*/ * qnode_on_self; int /*<<< orphan*/  service_queue; } ;
struct request_queue {int /*<<< orphan*/  node; } ;
struct blkcg {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 void* DFL_IDLE_THRESHOLD ; 
 void* DFL_LATENCY_TARGET ; 
 size_t LIMIT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t READ ; 
 void* U64_MAX ; 
 void* UINT_MAX ; 
 int WRITE ; 
 struct throtl_grp* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct throtl_grp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct blkg_policy_data *FUNC4(gfp_t gfp,
						struct request_queue *q,
						struct blkcg *blkcg)
{
	struct throtl_grp *tg;
	int rw;

	tg = FUNC1(sizeof(*tg), gfp, q->node);
	if (!tg)
		return NULL;

	FUNC3(&tg->service_queue);

	for (rw = READ; rw <= WRITE; rw++) {
		FUNC2(&tg->qnode_on_self[rw], tg);
		FUNC2(&tg->qnode_on_parent[rw], tg);
	}

	FUNC0(&tg->rb_node);
	tg->bps[READ][LIMIT_MAX] = U64_MAX;
	tg->bps[WRITE][LIMIT_MAX] = U64_MAX;
	tg->iops[READ][LIMIT_MAX] = UINT_MAX;
	tg->iops[WRITE][LIMIT_MAX] = UINT_MAX;
	tg->bps_conf[READ][LIMIT_MAX] = U64_MAX;
	tg->bps_conf[WRITE][LIMIT_MAX] = U64_MAX;
	tg->iops_conf[READ][LIMIT_MAX] = UINT_MAX;
	tg->iops_conf[WRITE][LIMIT_MAX] = UINT_MAX;
	/* LIMIT_LOW will have default value 0 */

	tg->latency_target = DFL_LATENCY_TARGET;
	tg->latency_target_conf = DFL_LATENCY_TARGET;
	tg->idletime_threshold = DFL_IDLE_THRESHOLD;
	tg->idletime_threshold_conf = DFL_IDLE_THRESHOLD;

	return &tg->pd;
}