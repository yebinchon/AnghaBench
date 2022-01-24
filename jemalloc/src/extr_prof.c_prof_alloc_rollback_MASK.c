#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  prof_tdata_t ;
struct TYPE_7__ {int prepared; TYPE_1__* tdata; } ;
typedef  TYPE_2__ prof_tctx_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10(tsd_t *tsd, prof_tctx_t *tctx, bool updated) {
	FUNC1(config_prof);

	if (FUNC8(tsd) > 0) {
		FUNC0((uintptr_t)tctx == (uintptr_t)1U);
		return;
	}

	prof_tdata_t *tdata;

	if (updated) {
		/*
		 * Compute a new sample threshold.  This isn't very important in
		 * practice, because this function is rarely executed, so the
		 * potential for sample bias is minimal except in contrived
		 * programs.
		 */
		tdata = FUNC7(tsd, true);
		if (tdata != NULL) {
			FUNC4(tsd);
		}
	}

	if ((uintptr_t)tctx > (uintptr_t)1U) {
		FUNC2(FUNC9(tsd), tctx->tdata->lock);
		tctx->prepared = false;
		if (FUNC6(FUNC9(tsd), tctx)) {
			FUNC5(tsd, tctx);
		} else {
			FUNC3(FUNC9(tsd), tctx->tdata->lock);
		}
	}
}