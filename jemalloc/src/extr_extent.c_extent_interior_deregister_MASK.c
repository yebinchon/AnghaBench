#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  int /*<<< orphan*/  extent_t ;

/* Variables and functions */
 int LG_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  extents_rtree ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,uintptr_t) ; 

__attribute__((used)) static void
FUNC5(tsdn_t *tsdn, rtree_ctx_t *rtree_ctx,
    extent_t *extent) {
	size_t i;

	FUNC0(FUNC3(extent));

	for (i = 1; i < (FUNC2(extent) >> LG_PAGE) - 1; i++) {
		FUNC4(tsdn, &extents_rtree, rtree_ctx,
		    (uintptr_t)FUNC1(extent) + (uintptr_t)(i <<
		    LG_PAGE));
	}
}