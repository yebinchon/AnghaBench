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
 void* FUNC0 (void*,size_t) ; 
 scalar_t__ FUNC1 (void*,size_t) ; 
 int FUNC2 (unsigned int) ; 
 int MAP_EXCL ; 
 void* MAP_FAILED ; 
 int MAP_FIXED ; 
 size_t PAGE ; 
 int PAGES_PROT_COMMIT ; 
 int PAGES_PROT_DECOMMIT ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 unsigned int FUNC5 (size_t) ; 
 void* FUNC6 (void*,size_t,int,int,int,int /*<<< orphan*/ ) ; 
 int mmap_flags ; 
 scalar_t__ os_overcommits ; 
 int /*<<< orphan*/  os_page ; 
 void* FUNC7 (void*,size_t,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (void*,size_t) ; 
 void* FUNC9 (size_t,size_t,int*) ; 

void *
FUNC10(void *addr, size_t size, size_t alignment, bool *commit) {
	FUNC4(alignment >= PAGE);
	FUNC4(FUNC0(addr, alignment) == addr);

#if defined(__FreeBSD__) && defined(MAP_EXCL)
	/*
	 * FreeBSD has mechanisms both to mmap at specific address without
	 * touching existing mappings, and to mmap with specific alignment.
	 */
	{
		if (os_overcommits) {
			*commit = true;
		}

		int prot = *commit ? PAGES_PROT_COMMIT : PAGES_PROT_DECOMMIT;
		int flags = mmap_flags;

		if (addr != NULL) {
			flags |= MAP_FIXED | MAP_EXCL;
		} else {
			unsigned alignment_bits = ffs_zu(alignment);
			assert(alignment_bits > 1);
			flags |= MAP_ALIGNED(alignment_bits - 1);
		}

		void *ret = mmap(addr, size, prot, flags, -1, 0);
		if (ret == MAP_FAILED) {
			ret = NULL;
		}

		return ret;
	}
#endif
	/*
	 * Ideally, there would be a way to specify alignment to mmap() (like
	 * NetBSD has), but in the absence of such a feature, we have to work
	 * hard to efficiently create aligned mappings.  The reliable, but
	 * slow method is to create a mapping that is over-sized, then trim the
	 * excess.  However, that always results in one or two calls to
	 * os_pages_unmap(), and it can leave holes in the process's virtual
	 * memory map if memory grows downward.
	 *
	 * Optimistically try mapping precisely the right amount before falling
	 * back to the slow method, with the expectation that the optimistic
	 * approach works most of the time.
	 */

	void *ret = FUNC7(addr, size, os_page, commit);
	if (ret == NULL || ret == addr) {
		return ret;
	}
	FUNC4(addr == NULL);
	if (FUNC1(ret, alignment) != 0) {
		FUNC8(ret, size);
		return FUNC9(size, alignment, commit);
	}

	FUNC4(FUNC3(ret) == ret);
	return ret;
}