#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
struct TYPE_5__ {int /*<<< orphan*/  init_lock; } ;
typedef  TYPE_1__ rtree_t ;
typedef  int /*<<< orphan*/  rtree_node_elm_t ;
typedef  int /*<<< orphan*/  atomic_p_t ;
struct TYPE_6__ {int bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 int /*<<< orphan*/  ATOMIC_RELEASE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* rtree_levels ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

__attribute__((used)) static rtree_node_elm_t *
FUNC6(tsdn_t *tsdn, rtree_t *rtree, unsigned level,
    atomic_p_t *elmp) {
	FUNC3(tsdn, &rtree->init_lock);
	/*
	 * If *elmp is non-null, then it was initialized with the init lock
	 * held, so we can get by with 'relaxed' here.
	 */
	rtree_node_elm_t *node = FUNC1(elmp, ATOMIC_RELAXED);
	if (node == NULL) {
		node = FUNC5(tsdn, rtree, FUNC0(1) <<
		    rtree_levels[level].bits);
		if (node == NULL) {
			FUNC4(tsdn, &rtree->init_lock);
			return NULL;
		}
		/*
		 * Even though we hold the lock, a later reader might not; we
		 * need release semantics.
		 */
		FUNC2(elmp, node, ATOMIC_RELEASE);
	}
	FUNC4(tsdn, &rtree->init_lock);

	return node;
}