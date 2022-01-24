#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int flags; } ;
typedef  TYPE_3__ xpparam_t ;
struct TYPE_20__ {int nreff; int /*<<< orphan*/  rindex; int /*<<< orphan*/  rchg; int /*<<< orphan*/  ha; } ;
struct TYPE_19__ {int nreff; int /*<<< orphan*/  rindex; int /*<<< orphan*/  rchg; int /*<<< orphan*/  ha; } ;
struct TYPE_22__ {TYPE_2__ xdf2; TYPE_1__ xdf1; } ;
typedef  TYPE_4__ xdfenv_t ;
struct TYPE_23__ {scalar_t__ mxcost; int /*<<< orphan*/  heur_min; int /*<<< orphan*/  snake_cnt; } ;
typedef  TYPE_5__ xdalgoenv_t ;
typedef  int /*<<< orphan*/  mmfile_t ;
struct TYPE_24__ {int nrec; int /*<<< orphan*/  rindex; int /*<<< orphan*/  rchg; int /*<<< orphan*/  ha; } ;
typedef  TYPE_6__ diffdata_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ XDF_HISTOGRAM_DIFF ; 
 int XDF_NEED_MINIMAL ; 
 scalar_t__ XDF_PATIENCE_DIFF ; 
 int /*<<< orphan*/  XDL_HEUR_MIN_COST ; 
 scalar_t__ XDL_MAX_COST_MIN ; 
 int /*<<< orphan*/  XDL_SNAKE_CNT ; 
 scalar_t__ FUNC1 (long) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__ const*,TYPE_4__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__ const*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (long*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__ const*,TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_6__*,int /*<<< orphan*/ ,int,TYPE_6__*,int /*<<< orphan*/ ,int,long*,long*,int,TYPE_5__*) ; 

int FUNC9(mmfile_t *mf1, mmfile_t *mf2, xpparam_t const *xpp,
		xdfenv_t *xe) {
	long ndiags;
	long *kvd, *kvdf, *kvdb;
	xdalgoenv_t xenv;
	diffdata_t dd1, dd2;

	if (FUNC0(xpp->flags) == XDF_PATIENCE_DIFF)
		return FUNC3(mf1, mf2, xpp, xe);

	if (FUNC0(xpp->flags) == XDF_HISTOGRAM_DIFF)
		return FUNC2(mf1, mf2, xpp, xe);

	if (FUNC7(mf1, mf2, xpp, xe) < 0) {

		return -1;
	}

	/*
	 * Allocate and setup K vectors to be used by the differential
	 * algorithm.
	 *
	 * One is to store the forward path and one to store the backward path.
	 */
	ndiags = xe->xdf1.nreff + xe->xdf2.nreff + 3;
	if (!(kvd = (long *) FUNC6((2 * ndiags + 2) * sizeof(long)))) {

		FUNC5(xe);
		return -1;
	}
	kvdf = kvd;
	kvdb = kvdf + ndiags;
	kvdf += xe->xdf2.nreff + 1;
	kvdb += xe->xdf2.nreff + 1;

	xenv.mxcost = FUNC1(ndiags);
	if (xenv.mxcost < XDL_MAX_COST_MIN)
		xenv.mxcost = XDL_MAX_COST_MIN;
	xenv.snake_cnt = XDL_SNAKE_CNT;
	xenv.heur_min = XDL_HEUR_MIN_COST;

	dd1.nrec = xe->xdf1.nreff;
	dd1.ha = xe->xdf1.ha;
	dd1.rchg = xe->xdf1.rchg;
	dd1.rindex = xe->xdf1.rindex;
	dd2.nrec = xe->xdf2.nreff;
	dd2.ha = xe->xdf2.ha;
	dd2.rchg = xe->xdf2.rchg;
	dd2.rindex = xe->xdf2.rindex;

	if (FUNC8(&dd1, 0, dd1.nrec, &dd2, 0, dd2.nrec,
			 kvdf, kvdb, (xpp->flags & XDF_NEED_MINIMAL) != 0, &xenv) < 0) {

		FUNC4(kvd);
		FUNC5(xe);
		return -1;
	}

	FUNC4(kvd);

	return 0;
}