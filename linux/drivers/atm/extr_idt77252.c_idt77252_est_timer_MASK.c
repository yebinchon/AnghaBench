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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct vc_map {scalar_t__ max_er; scalar_t__ lacr; int index; int /*<<< orphan*/  lock; int /*<<< orphan*/  estimator; struct idt77252_dev* card; } ;
struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct rate_estimator {int interval; long avcps; long ewma_log; int cps; int maxcps; TYPE_1__ timer; scalar_t__ last_cells; scalar_t__ cells; struct vc_map* vc; } ;
struct idt77252_dev {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  SAR_REG_TCMDQ ; 
 int TCMDQ_LACR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct rate_estimator* est ; 
 struct rate_estimator* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct idt77252_dev*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct timer_list *t)
{
	struct rate_estimator *est = FUNC1(est, t, timer);
	struct vc_map *vc = est->vc;
	struct idt77252_dev *card = vc->card;
	unsigned long flags;
	u32 rate, cps;
	u64 ncells;
	u8 lacr;

	FUNC3(&vc->lock, flags);
	if (!vc->estimator)
		goto out;
	ncells = est->cells;

	rate = ((u32)(ncells - est->last_cells)) << (7 - est->interval);
	est->last_cells = ncells;
	est->avcps += ((long)rate - (long)est->avcps) >> est->ewma_log;
	est->cps = (est->avcps + 0x1f) >> 5;

	cps = est->cps;
	if (cps < (est->maxcps >> 4))
		cps = est->maxcps >> 4;

	lacr = FUNC2(card, cps);
	if (lacr > vc->max_er)
		lacr = vc->max_er;

	if (lacr != vc->lacr) {
		vc->lacr = lacr;
		FUNC5(TCMDQ_LACR|(vc->lacr << 16)|vc->index, SAR_REG_TCMDQ);
	}

	est->timer.expires = jiffies + ((HZ / 4) << est->interval);
	FUNC0(&est->timer);

out:
	FUNC4(&vc->lock, flags);
}