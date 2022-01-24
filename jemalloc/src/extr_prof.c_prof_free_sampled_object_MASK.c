#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_9__ {scalar_t__ curobjs; size_t curbytes; } ;
struct TYPE_10__ {TYPE_1__* tdata; TYPE_2__ cnts; } ;
typedef  TYPE_3__ prof_tctx_t ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const*,size_t,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(tsd_t *tsd, const void *ptr, size_t usize,
    prof_tctx_t *tctx) {
	FUNC1(FUNC6(tsd), tctx->tdata->lock);

	FUNC0(tctx->cnts.curobjs > 0);
	FUNC0(tctx->cnts.curbytes >= usize);
	tctx->cnts.curobjs--;
	tctx->cnts.curbytes -= usize;

	FUNC5(tsd, ptr, usize, tctx);

	if (FUNC4(FUNC6(tsd), tctx)) {
		FUNC3(tsd, tctx);
	} else {
		FUNC2(FUNC6(tsd), tctx->tdata->lock);
	}
}