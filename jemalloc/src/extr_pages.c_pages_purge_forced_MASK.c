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

/* Variables and functions */
 int /*<<< orphan*/  MADV_DONTNEED ; 
 void* FUNC0 (void*) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  pages_can_purge_forced ; 
 int FUNC5 (void*,size_t) ; 

bool
FUNC6(void *addr, size_t size) {
	FUNC2(FUNC0(addr) == addr);
	FUNC2(FUNC1(size) == size);

	if (!pages_can_purge_forced) {
		return true;
	}

#if defined(JEMALLOC_PURGE_MADVISE_DONTNEED) && \
    defined(JEMALLOC_PURGE_MADVISE_DONTNEED_ZEROS)
	return (madvise(addr, size, MADV_DONTNEED) != 0);
#elif defined(JEMALLOC_MAPS_COALESCE)
	/* Try to overlay a new demand-zeroed mapping. */
	return pages_commit(addr, size);
#else
	FUNC4();
#endif
}