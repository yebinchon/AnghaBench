#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_7__ {int /*<<< orphan*/  eset_muzzy; int /*<<< orphan*/  eset_dirty; int /*<<< orphan*/  nactive; } ;
typedef  TYPE_1__ arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char** dss_prec_names ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(tsdn_t *tsdn, arena_t *arena, unsigned *nthreads,
    const char **dss, ssize_t *dirty_decay_ms, ssize_t *muzzy_decay_ms,
    size_t *nactive, size_t *ndirty, size_t *nmuzzy) {
	*nthreads += FUNC3(arena, false);
	*dss = dss_prec_names[FUNC1(arena)];
	*dirty_decay_ms = FUNC0(arena);
	*muzzy_decay_ms = FUNC2(arena);
	*nactive += FUNC4(&arena->nactive, ATOMIC_RELAXED);
	*ndirty += FUNC5(&arena->eset_dirty);
	*nmuzzy += FUNC5(&arena->eset_muzzy);
}