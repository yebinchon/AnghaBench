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
typedef  int /*<<< orphan*/  szind_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 size_t SC_SMALL_MAXCLASS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

void *
FUNC9(tsdn_t *tsdn, arena_t *arena, size_t size, szind_t ind,
    bool zero) {
	FUNC2(!FUNC6(tsdn) || arena != NULL);

	if (FUNC4(!FUNC6(tsdn))) {
		arena = FUNC0(FUNC7(tsdn), arena, size);
	}
	if (FUNC8(arena == NULL)) {
		return NULL;
	}

	if (FUNC4(size <= SC_SMALL_MAXCLASS)) {
		return FUNC1(tsdn, arena, ind, zero);
	}
	return FUNC3(tsdn, arena, FUNC5(ind), zero);
}