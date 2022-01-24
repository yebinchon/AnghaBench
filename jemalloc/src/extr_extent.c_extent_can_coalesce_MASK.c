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
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_3__ {scalar_t__ state; } ;
typedef  TYPE_1__ eset_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ extent_state_active ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static bool
FUNC5(arena_t *arena, eset_t *eset, const extent_t *inner,
    const extent_t *outer) {
	FUNC1(FUNC2(inner) == FUNC0(arena));
	if (FUNC2(outer) != FUNC0(arena)) {
		return false;
	}

	FUNC1(FUNC4(inner) == extent_state_active);
	if (FUNC4(outer) != eset->state) {
		return false;
	}

	if (FUNC3(inner) != FUNC3(outer)) {
		return false;
	}

	return true;
}