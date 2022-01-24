#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  accumbytes; int /*<<< orphan*/  accumobjs; int /*<<< orphan*/  curbytes; int /*<<< orphan*/  curobjs; } ;
struct prof_tdata_merge_iter_arg_s {int /*<<< orphan*/  tsdn; TYPE_1__ cnt_all; } ;
typedef  int /*<<< orphan*/  prof_tdata_tree_t ;
struct TYPE_9__ {scalar_t__ accumbytes; scalar_t__ accumobjs; scalar_t__ curbytes; scalar_t__ curobjs; } ;
struct TYPE_8__ {int dumping; int /*<<< orphan*/  lock; TYPE_6__ cnt_summed; int /*<<< orphan*/  bt2tctx; int /*<<< orphan*/  expired; } ;
typedef  TYPE_2__ prof_tdata_t ;
typedef  int /*<<< orphan*/  prof_tctx_t ;
typedef  int /*<<< orphan*/  prof_cnt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ opt_prof_accum ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static prof_tdata_t *
FUNC5(prof_tdata_tree_t *tdatas, prof_tdata_t *tdata,
    void *opaque) {
	struct prof_tdata_merge_iter_arg_s *arg =
	    (struct prof_tdata_merge_iter_arg_s *)opaque;

	FUNC1(arg->tsdn, tdata->lock);
	if (!tdata->expired) {
		size_t tabind;
		union {
			prof_tctx_t	*p;
			void		*v;
		} tctx;

		tdata->dumping = true;
		FUNC3(&tdata->cnt_summed, 0, sizeof(prof_cnt_t));
		for (tabind = 0; !FUNC0(&tdata->bt2tctx, &tabind, NULL,
		    &tctx.v);) {
			FUNC4(arg->tsdn, tctx.p, tdata);
		}

		arg->cnt_all.curobjs += tdata->cnt_summed.curobjs;
		arg->cnt_all.curbytes += tdata->cnt_summed.curbytes;
		if (opt_prof_accum) {
			arg->cnt_all.accumobjs += tdata->cnt_summed.accumobjs;
			arg->cnt_all.accumbytes += tdata->cnt_summed.accumbytes;
		}
	} else {
		tdata->dumping = false;
	}
	FUNC2(arg->tsdn, tdata->lock);

	return NULL;
}