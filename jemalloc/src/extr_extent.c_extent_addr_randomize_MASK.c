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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_5__ {void* e_addr; } ;
typedef  TYPE_1__ extent_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 void* FUNC0 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 unsigned int LG_PAGE ; 
 size_t PAGE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(tsdn_t *tsdn, arena_t *arena, extent_t *extent,
    size_t alignment) {
	FUNC2(FUNC4(extent) == FUNC3(extent));

	if (alignment < PAGE) {
		unsigned lg_range = LG_PAGE -
		    FUNC5(FUNC1(alignment));
		size_t r;
		if (!FUNC8(tsdn)) {
			tsd_t *tsd = FUNC9(tsdn);
			r = (size_t)FUNC6(
			    FUNC7(tsd), lg_range);
		} else {
			uint64_t stack_value = (uint64_t)(uintptr_t)&r;
			r = (size_t)FUNC6(&stack_value, lg_range);
		}
		uintptr_t random_offset = ((uintptr_t)r) << (LG_PAGE -
		    lg_range);
		extent->e_addr = (void *)((uintptr_t)extent->e_addr +
		    random_offset);
		FUNC2(FUNC0(extent->e_addr, alignment) ==
		    extent->e_addr);
	}
}