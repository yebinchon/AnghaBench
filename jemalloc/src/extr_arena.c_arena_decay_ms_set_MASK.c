#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  eset_t ;
typedef  int /*<<< orphan*/  arena_t ;
struct TYPE_5__ {int /*<<< orphan*/  mtx; } ;
typedef  TYPE_1__ arena_decay_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC5(tsdn_t *tsdn, arena_t *arena, arena_decay_t *decay,
    eset_t *eset, ssize_t decay_ms) {
	if (!FUNC0(decay_ms)) {
		return true;
	}

	FUNC3(tsdn, &decay->mtx);
	/*
	 * Restart decay backlog from scratch, which may cause many dirty pages
	 * to be immediately purged.  It would conceptually be possible to map
	 * the old backlog onto the new backlog, but there is no justification
	 * for such complexity since decay_ms changes are intended to be
	 * infrequent, either between the {-1, 0, >0} states, or a one-time
	 * arbitrary change during initial arena configuration.
	 */
	FUNC1(decay, decay_ms);
	FUNC2(tsdn, arena, decay, eset, false);
	FUNC4(tsdn, &decay->mtx);

	return false;
}