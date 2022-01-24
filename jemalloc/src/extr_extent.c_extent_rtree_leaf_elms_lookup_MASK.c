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
typedef  int /*<<< orphan*/  rtree_leaf_elm_t ;
typedef  int /*<<< orphan*/  rtree_ctx_t ;
typedef  int /*<<< orphan*/  extent_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  extents_rtree ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,uintptr_t,int,int) ; 

__attribute__((used)) static bool
FUNC4(tsdn_t *tsdn, rtree_ctx_t *rtree_ctx,
    const extent_t *extent, bool dependent, bool init_missing,
    rtree_leaf_elm_t **r_elm_a, rtree_leaf_elm_t **r_elm_b) {
	*r_elm_a = FUNC3(tsdn, &extents_rtree, rtree_ctx,
	    (uintptr_t)FUNC1(extent), dependent, init_missing);
	if (!dependent && *r_elm_a == NULL) {
		return true;
	}
	FUNC0(*r_elm_a != NULL);

	*r_elm_b = FUNC3(tsdn, &extents_rtree, rtree_ctx,
	    (uintptr_t)FUNC2(extent), dependent, init_missing);
	if (!dependent && *r_elm_b == NULL) {
		return true;
	}
	FUNC0(*r_elm_b != NULL);

	return false;
}