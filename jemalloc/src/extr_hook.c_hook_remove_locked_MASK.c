#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  seq_hooks_t ;
struct TYPE_4__ {int in_use; } ;
typedef  TYPE_1__ hooks_internal_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nhooks ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(seq_hooks_t *to_remove) {
	hooks_internal_t hooks_internal;
	bool success = FUNC4(&hooks_internal, to_remove);
	/* We hold mu; no concurrent access. */
	FUNC0(success);
	/* Should only remove hooks that were added. */
	FUNC0(hooks_internal.in_use);
	hooks_internal.in_use = false;
	FUNC3(to_remove, &hooks_internal);
	FUNC2(&nhooks, FUNC1(&nhooks, ATOMIC_RELAXED) - 1,
	    ATOMIC_RELAXED);
}