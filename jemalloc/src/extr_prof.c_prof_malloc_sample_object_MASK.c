#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
struct TYPE_6__ {size_t curbytes; size_t accumbytes; int /*<<< orphan*/  accumobjs; int /*<<< orphan*/  curobjs; } ;
struct TYPE_8__ {int prepared; TYPE_2__* tdata; TYPE_1__ cnts; } ;
typedef  TYPE_3__ prof_tctx_t ;
typedef  int /*<<< orphan*/  nstime_t ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  NSTIME_ZERO_INITIALIZER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ opt_prof_accum ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const*,size_t,int /*<<< orphan*/ *,TYPE_3__*) ; 

void
FUNC5(tsdn_t *tsdn, const void *ptr, size_t usize,
    prof_tctx_t *tctx) {
	FUNC4(tsdn, ptr, usize, NULL, tctx);

	/* Get the current time and set this in the extent_t. We'll read this
	 * when free() is called. */
	nstime_t t = NSTIME_ZERO_INITIALIZER;
	FUNC2(&t);
	FUNC3(tsdn, ptr, t);

	FUNC0(tsdn, tctx->tdata->lock);
	tctx->cnts.curobjs++;
	tctx->cnts.curbytes += usize;
	if (opt_prof_accum) {
		tctx->cnts.accumobjs++;
		tctx->cnts.accumbytes += usize;
	}
	tctx->prepared = false;
	FUNC1(tsdn, tctx->tdata->lock);
}