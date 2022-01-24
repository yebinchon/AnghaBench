#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_14__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  bt2tctx; } ;
typedef  TYPE_2__ prof_tdata_t ;
struct TYPE_13__ {scalar_t__ curobjs; scalar_t__ curbytes; scalar_t__ accumobjs; scalar_t__ accumbytes; } ;
struct TYPE_15__ {int state; TYPE_2__* tdata; TYPE_1__ cnts; TYPE_4__* gctx; } ;
typedef  TYPE_3__ prof_tctx_t ;
struct TYPE_16__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  nlimbo; int /*<<< orphan*/  tctxs; int /*<<< orphan*/  bt; } ;
typedef  TYPE_4__ prof_gctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  opt_prof_accum ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,TYPE_2__*) ; 
#define  prof_tctx_state_dumping 129 
#define  prof_tctx_state_nominal 128 
 int prof_tctx_state_purgatory ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void
FUNC15(tsd_t *tsd, prof_tctx_t *tctx) {
	prof_tdata_t *tdata = tctx->tdata;
	prof_gctx_t *gctx = tctx->gctx;
	bool destroy_tdata, destroy_tctx, destroy_gctx;

	FUNC4(FUNC14(tsd), tctx->tdata->lock);

	FUNC0(tctx->cnts.curobjs == 0);
	FUNC0(tctx->cnts.curbytes == 0);
	FUNC0(!opt_prof_accum);
	FUNC0(tctx->cnts.accumobjs == 0);
	FUNC0(tctx->cnts.accumbytes == 0);

	FUNC1(tsd, &tdata->bt2tctx, &gctx->bt, NULL, NULL);
	destroy_tdata = FUNC12(FUNC14(tsd), tdata, false);
	FUNC6(FUNC14(tsd), tdata->lock);

	FUNC5(FUNC14(tsd), gctx->lock);
	switch (tctx->state) {
	case prof_tctx_state_nominal:
		FUNC13(&gctx->tctxs, tctx);
		destroy_tctx = true;
		if (FUNC8(gctx)) {
			/*
			 * Increment gctx->nlimbo in order to keep another
			 * thread from winning the race to destroy gctx while
			 * this one has gctx->lock dropped.  Without this, it
			 * would be possible for another thread to:
			 *
			 * 1) Sample an allocation associated with gctx.
			 * 2) Deallocate the sampled object.
			 * 3) Successfully prof_gctx_try_destroy(gctx).
			 *
			 * The result would be that gctx no longer exists by the
			 * time this thread accesses it in
			 * prof_gctx_try_destroy().
			 */
			gctx->nlimbo++;
			destroy_gctx = true;
		} else {
			destroy_gctx = false;
		}
		break;
	case prof_tctx_state_dumping:
		/*
		 * A dumping thread needs tctx to remain valid until dumping
		 * has finished.  Change state such that the dumping thread will
		 * complete destruction during a late dump iteration phase.
		 */
		tctx->state = prof_tctx_state_purgatory;
		destroy_tctx = false;
		destroy_gctx = false;
		break;
	default:
		FUNC7();
		destroy_tctx = false;
		destroy_gctx = false;
	}
	FUNC6(FUNC14(tsd), gctx->lock);
	if (destroy_gctx) {
		FUNC9(tsd, FUNC11(tsd, false), gctx,
		    tdata);
	}

	FUNC3(FUNC14(tsd), tctx->tdata->lock);

	if (destroy_tdata) {
		FUNC10(tsd, tdata, false);
	}

	if (destroy_tctx) {
		FUNC2(FUNC14(tsd), tctx, NULL, NULL, true, true);
	}
}