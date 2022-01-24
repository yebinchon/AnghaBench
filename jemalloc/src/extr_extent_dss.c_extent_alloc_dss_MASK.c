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
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 size_t FUNC0 (uintptr_t,size_t) ; 
 int /*<<< orphan*/  ATOMIC_ACQUIRE ; 
 int /*<<< orphan*/  ATOMIC_RELEASE ; 
 int /*<<< orphan*/ * EXTENT_HOOKS_INITIALIZER ; 
 int /*<<< orphan*/  EXTENT_NOT_HEAD ; 
 size_t PAGE ; 
 scalar_t__ FUNC1 (uintptr_t) ; 
 int SC_NSIZES ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dss_exhausted ; 
 int /*<<< orphan*/  dss_max ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 void* FUNC14 (void*) ; 
 void* FUNC15 (intptr_t) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,size_t,size_t,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  extent_state_active ; 
 int /*<<< orphan*/  have_dss ; 
 int /*<<< orphan*/  FUNC18 (void*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC19 (void*,size_t) ; 

void *
FUNC20(tsdn_t *tsdn, arena_t *arena, void *new_addr, size_t size,
    size_t alignment, bool *zero, bool *commit) {
	extent_t *gap;

	FUNC8(have_dss);
	FUNC4(size > 0);
	FUNC4(alignment == FUNC0(alignment, PAGE));

	/*
	 * sbrk() uses a signed increment argument, so take care not to
	 * interpret a large allocation request as a negative increment.
	 */
	if ((intptr_t)size < 0) {
		return NULL;
	}

	gap = FUNC9(tsdn, arena);
	if (gap == NULL) {
		return NULL;
	}

	FUNC13();
	if (!FUNC5(&dss_exhausted, ATOMIC_ACQUIRE)) {
		/*
		 * The loop is necessary to recover from races with other
		 * threads that are using the DSS for something other than
		 * malloc.
		 */
		while (true) {
			void *max_cur = FUNC14(new_addr);
			if (max_cur == NULL) {
				goto label_oom;
			}

			/*
			 * Compute how much page-aligned gap space (if any) is
			 * necessary to satisfy alignment.  This space can be
			 * recycled for later use.
			 */
			void *gap_addr_page = (void *)(FUNC1(
			    (uintptr_t)max_cur));
			void *ret = (void *)FUNC0(
			    (uintptr_t)gap_addr_page, alignment);
			size_t gap_size_page = (uintptr_t)ret -
			    (uintptr_t)gap_addr_page;
			if (gap_size_page != 0) {
				FUNC16(gap, FUNC3(arena),
				    gap_addr_page, gap_size_page, false,
				    SC_NSIZES, FUNC2(arena),
				    extent_state_active, false, true, true,
				    EXTENT_NOT_HEAD);
			}
			/*
			 * Compute the address just past the end of the desired
			 * allocation space.
			 */
			void *dss_next = (void *)((uintptr_t)ret + size);
			if ((uintptr_t)ret < (uintptr_t)max_cur ||
			    (uintptr_t)dss_next < (uintptr_t)max_cur) {
				goto label_oom; /* Wrap-around. */
			}
			/* Compute the increment, including subpage bytes. */
			void *gap_addr_subpage = max_cur;
			size_t gap_size_subpage = (uintptr_t)ret -
			    (uintptr_t)gap_addr_subpage;
			intptr_t incr = gap_size_subpage + size;

			FUNC4((uintptr_t)max_cur + incr == (uintptr_t)ret +
			    size);

			/* Try to allocate. */
			void *dss_prev = FUNC15(incr);
			if (dss_prev == max_cur) {
				/* Success. */
				FUNC7(&dss_max, dss_next,
				    ATOMIC_RELEASE);
				FUNC12();

				if (gap_size_page != 0) {
					FUNC11(tsdn, arena, gap);
				} else {
					FUNC10(tsdn, arena, gap);
				}
				if (!*commit) {
					*commit = FUNC19(ret, size);
				}
				if (*zero && *commit) {
					extent_hooks_t *extent_hooks =
					    EXTENT_HOOKS_INITIALIZER;
					extent_t extent;

					FUNC16(&extent,
					    FUNC3(arena), ret, size,
					    size, false, SC_NSIZES,
					    extent_state_active, false, true,
					    true, EXTENT_NOT_HEAD);
					if (FUNC17(tsdn,
					    arena, &extent_hooks, &extent, 0,
					    size)) {
						FUNC18(ret, 0, size);
					}
				}
				return ret;
			}
			/*
			 * Failure, whether due to OOM or a race with a raw
			 * sbrk() call from outside the allocator.
			 */
			if (dss_prev == (void *)-1) {
				/* OOM. */
				FUNC6(&dss_exhausted, true,
				    ATOMIC_RELEASE);
				goto label_oom;
			}
		}
	}
label_oom:
	FUNC12();
	FUNC10(tsdn, arena, gap);
	return NULL;
}