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
typedef  size_t pszind_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_3__ {int /*<<< orphan*/ * heaps; int /*<<< orphan*/  bitmap; } ;
typedef  TYPE_1__ eset_t ;

/* Variables and functions */
 uintptr_t FUNC0 (uintptr_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 size_t SC_NPSIZES ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  eset_bitmap_info ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (size_t) ; 

__attribute__((used)) static extent_t *
FUNC10(eset_t *eset, size_t min_size, size_t max_size,
    size_t alignment) {
        pszind_t pind = FUNC8(FUNC9(min_size));
        pszind_t pind_max = FUNC8(FUNC9(max_size));

	for (pszind_t i = (pszind_t)FUNC3(eset->bitmap,
	    &eset_bitmap_info, (size_t)pind); i < pind_max; i =
	    (pszind_t)FUNC3(eset->bitmap, &eset_bitmap_info,
	    (size_t)i+1)) {
		FUNC2(i < SC_NPSIZES);
		FUNC2(!FUNC5(&eset->heaps[i]));
		extent_t *extent = FUNC6(&eset->heaps[i]);
		uintptr_t base = (uintptr_t)FUNC4(extent);
		size_t candidate_size = FUNC7(extent);
		FUNC2(candidate_size >= min_size);

		uintptr_t next_align = FUNC0((uintptr_t)base,
		    FUNC1(alignment));
		if (base > next_align || base + candidate_size <= next_align) {
			/* Overflow or not crossing the next alignment. */
			continue;
		}

		size_t leadsize = next_align - base;
		if (candidate_size - leadsize >= min_size) {
			return extent;
		}
	}

	return NULL;
}