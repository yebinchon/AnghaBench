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
typedef  int /*<<< orphan*/  hooks_t ;
struct TYPE_4__ {int in_use; int /*<<< orphan*/  hooks; } ;
typedef  TYPE_1__ hooks_internal_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 int HOOK_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 void* hooks ; 
 int /*<<< orphan*/  nhooks ; 
 int /*<<< orphan*/  FUNC3 (void*,TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,void*) ; 

__attribute__((used)) static void *
FUNC5(hooks_t *to_install) {
	hooks_internal_t hooks_internal;
	for (int i = 0; i < HOOK_MAX; i++) {
		bool success = FUNC4(&hooks_internal, &hooks[i]);
		/* We hold mu; no concurrent access. */
		FUNC0(success);
		if (!hooks_internal.in_use) {
			hooks_internal.hooks = *to_install;
			hooks_internal.in_use = true;
			FUNC3(&hooks[i], &hooks_internal);
			FUNC2(&nhooks,
			    FUNC1(&nhooks, ATOMIC_RELAXED) + 1,
			    ATOMIC_RELAXED);
			return &hooks[i];
		}
	}
	return NULL;
}