#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_3__ {int /*<<< orphan*/  extent_avail_mtx; int /*<<< orphan*/  extent_avail_cnt; int /*<<< orphan*/  extent_avail; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

extent_t *
FUNC6(tsdn_t *tsdn, arena_t *arena) {
	FUNC4(tsdn, &arena->extent_avail_mtx);
	extent_t *extent = FUNC2(&arena->extent_avail);
	if (extent == NULL) {
		FUNC5(tsdn, &arena->extent_avail_mtx);
		return FUNC1(tsdn, arena->base);
	}
	FUNC3(&arena->extent_avail, extent);
	FUNC0(&arena->extent_avail_cnt, 1, ATOMIC_RELAXED);
	FUNC5(tsdn, &arena->extent_avail_mtx);
	return extent;
}