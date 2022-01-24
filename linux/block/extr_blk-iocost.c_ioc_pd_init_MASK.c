#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ioc_now {int /*<<< orphan*/  vnow; } ;
struct TYPE_8__ {int /*<<< orphan*/  function; } ;
struct ioc_gq {size_t level; struct ioc_gq** ancestors; TYPE_4__ delay_timer; TYPE_4__ waitq_timer; int /*<<< orphan*/  waitq; void* hweight_inuse; void* hweight_active; int /*<<< orphan*/  active_list; int /*<<< orphan*/  active_period; int /*<<< orphan*/  abs_vdebt; int /*<<< orphan*/  done_vtime; int /*<<< orphan*/  vtime; struct ioc* ioc; int /*<<< orphan*/  pd; } ;
struct ioc {int /*<<< orphan*/  lock; int /*<<< orphan*/  cur_period; } ;
struct blkg_policy_data {int dummy; } ;
struct blkcg_gq {struct blkcg_gq* parent; TYPE_3__* blkcg; int /*<<< orphan*/  q; } ;
struct TYPE_6__ {TYPE_1__* cgroup; } ;
struct TYPE_7__ {TYPE_2__ css; } ;
struct TYPE_5__ {size_t level; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 void* HWEIGHT_WHOLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ioc_gq* FUNC3 (struct blkcg_gq*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ioc*,struct ioc_now*) ; 
 int /*<<< orphan*/  iocg_delay_timer_fn ; 
 int /*<<< orphan*/  iocg_waitq_timer_fn ; 
 struct blkcg_gq* FUNC7 (int /*<<< orphan*/ *) ; 
 struct ioc_gq* FUNC8 (struct blkg_policy_data*) ; 
 struct ioc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct ioc_gq*) ; 

__attribute__((used)) static void FUNC13(struct blkg_policy_data *pd)
{
	struct ioc_gq *iocg = FUNC8(pd);
	struct blkcg_gq *blkg = FUNC7(&iocg->pd);
	struct ioc *ioc = FUNC9(blkg->q);
	struct ioc_now now;
	struct blkcg_gq *tblkg;
	unsigned long flags;

	FUNC6(ioc, &now);

	iocg->ioc = ioc;
	FUNC2(&iocg->vtime, now.vnow);
	FUNC2(&iocg->done_vtime, now.vnow);
	FUNC2(&iocg->abs_vdebt, 0);
	FUNC2(&iocg->active_period, FUNC1(&ioc->cur_period));
	FUNC0(&iocg->active_list);
	iocg->hweight_active = HWEIGHT_WHOLE;
	iocg->hweight_inuse = HWEIGHT_WHOLE;

	FUNC5(&iocg->waitq);
	FUNC4(&iocg->waitq_timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
	iocg->waitq_timer.function = iocg_waitq_timer_fn;
	FUNC4(&iocg->delay_timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
	iocg->delay_timer.function = iocg_delay_timer_fn;

	iocg->level = blkg->blkcg->css.cgroup->level;

	for (tblkg = blkg; tblkg; tblkg = tblkg->parent) {
		struct ioc_gq *tiocg = FUNC3(tblkg);
		iocg->ancestors[tiocg->level] = tiocg;
	}

	FUNC10(&ioc->lock, flags);
	FUNC12(iocg);
	FUNC11(&ioc->lock, flags);
}