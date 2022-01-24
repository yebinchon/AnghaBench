#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  prof_tdata_t ;
typedef  int /*<<< orphan*/  prof_tctx_t ;
typedef  int /*<<< orphan*/  prof_gctx_tree_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  nlimbo; int /*<<< orphan*/  tctxs; } ;
typedef  TYPE_1__ prof_gctx_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prof_tctx_finish_iter ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(tsd_t *tsd, prof_gctx_tree_t *gctxs) {
	prof_tdata_t *tdata = FUNC7(tsd, false);
	prof_gctx_t *gctx;

	/*
	 * Standard tree iteration won't work here, because as soon as we
	 * decrement gctx->nlimbo and unlock gctx, another thread can
	 * concurrently destroy it, which will corrupt the tree.  Therefore,
	 * tear down the tree one node at a time during iteration.
	 */
	while ((gctx = FUNC0(gctxs)) != NULL) {
		FUNC1(gctxs, gctx);
		FUNC3(FUNC11(tsd), gctx->lock);
		{
			prof_tctx_t *next;

			next = NULL;
			do {
				prof_tctx_t *to_destroy =
				    FUNC8(&gctx->tctxs, next,
				    prof_tctx_finish_iter,
				    (void *)FUNC11(tsd));
				if (to_destroy != NULL) {
					next = FUNC9(&gctx->tctxs,
					    to_destroy);
					FUNC10(&gctx->tctxs,
					    to_destroy);
					FUNC2(FUNC11(tsd), to_destroy,
					    NULL, NULL, true, true);
				} else {
					next = NULL;
				}
			} while (next != NULL);
		}
		gctx->nlimbo--;
		if (FUNC5(gctx)) {
			gctx->nlimbo++;
			FUNC4(FUNC11(tsd), gctx->lock);
			FUNC6(tsd, tdata, gctx, tdata);
		} else {
			FUNC4(FUNC11(tsd), gctx->lock);
		}
	}
}