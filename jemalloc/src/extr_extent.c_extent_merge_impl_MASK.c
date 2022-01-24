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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  rtree_leaf_elm_t ;
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_6__ {int (* merge ) (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ;} ;
typedef  TYPE_1__ extent_hooks_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  SC_NSIZES ; 
 int /*<<< orphan*/  WITNESS_RANK_CORE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 TYPE_1__ extent_hooks_default ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  extents_rtree ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC23 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC27(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, extent_t *a, extent_t *b,
    bool growing_retained) {
	FUNC26(FUNC25(tsdn),
	    WITNESS_RANK_CORE, growing_retained ? 1 : 0);
	FUNC1(FUNC3(a) < FUNC3(b));

	FUNC9(arena, r_extent_hooks);

	if ((*r_extent_hooks)->merge == NULL || FUNC6(a, b)) {
		return true;
	}

	bool err;
	if (*r_extent_hooks == &extent_hooks_default) {
		/* Call directly to propagate tsdn. */
		err = FUNC11(FUNC3(a),
		    FUNC3(b));
	} else {
		FUNC8(tsdn, arena);
		err = (*r_extent_hooks)->merge(*r_extent_hooks,
		    FUNC3(a), FUNC14(a), FUNC3(b),
		    FUNC14(b), FUNC4(a),
		    FUNC0(arena));
		FUNC7(tsdn);
	}

	if (err) {
		return true;
	}

	/*
	 * The rtree writes must happen while all the relevant elements are
	 * owned, so the following code uses decomposed helper functions rather
	 * than extent_{,de}register() to do things in the right order.
	 */
	rtree_ctx_t rtree_ctx_fallback;
	rtree_ctx_t *rtree_ctx = FUNC24(tsdn, &rtree_ctx_fallback);
	rtree_leaf_elm_t *a_elm_a, *a_elm_b, *b_elm_a, *b_elm_b;
	FUNC12(tsdn, rtree_ctx, a, true, false, &a_elm_a,
	    &a_elm_b);
	FUNC12(tsdn, rtree_ctx, b, true, false, &b_elm_a,
	    &b_elm_b);

	FUNC10(tsdn, a, b);

	if (a_elm_b != NULL) {
		FUNC22(tsdn, &extents_rtree, a_elm_b, NULL,
		    SC_NSIZES, false);
	}
	if (b_elm_b != NULL) {
		FUNC22(tsdn, &extents_rtree, b_elm_a, NULL,
		    SC_NSIZES, false);
	} else {
		b_elm_b = b_elm_a;
	}

	FUNC15(a, FUNC14(a) + FUNC14(b));
	FUNC18(a, SC_NSIZES);
	FUNC17(a, (FUNC16(a) < FUNC16(b)) ?
	    FUNC16(a) : FUNC16(b));
	FUNC21(a, FUNC20(a) && FUNC20(b));

	FUNC13(tsdn, a_elm_a, b_elm_b, a, SC_NSIZES,
	    false);

	FUNC19(tsdn, a, b);

	/*
	 * If we got here, we merged the extents; so they must be from the same
	 * arena (i.e. this one).
	 */
	FUNC1(FUNC2(b) == FUNC0(arena));
	FUNC5(tsdn, arena, b);

	return false;
}