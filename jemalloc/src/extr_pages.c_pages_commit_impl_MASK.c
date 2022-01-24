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
 void* MAP_FAILED ; 
 int MAP_FIXED ; 
 int /*<<< orphan*/  MEM_COMMIT ; 
 int /*<<< orphan*/  MEM_DECOMMIT ; 
 int PAGES_PROT_COMMIT ; 
 int PAGES_PROT_DECOMMIT ; 
 void* FUNC0 (void*) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 void* FUNC2 (void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (void*,size_t,int,int,int,int /*<<< orphan*/ ) ; 
 int mmap_flags ; 
 scalar_t__ os_overcommits ; 
 int /*<<< orphan*/  FUNC6 (void*,size_t) ; 

__attribute__((used)) static bool
FUNC7(void *addr, size_t size, bool commit) {
	FUNC4(FUNC0(addr) == addr);
	FUNC4(FUNC1(size) == size);

	if (os_overcommits) {
		return true;
	}

#ifdef _WIN32
	return (commit ? (addr != VirtualAlloc(addr, size, MEM_COMMIT,
	    PAGE_READWRITE)) : (!VirtualFree(addr, size, MEM_DECOMMIT)));
#else
	{
		int prot = commit ? PAGES_PROT_COMMIT : PAGES_PROT_DECOMMIT;
		void *result = FUNC5(addr, size, prot, mmap_flags | MAP_FIXED,
		    -1, 0);
		if (result == MAP_FAILED) {
			return true;
		}
		if (result != addr) {
			/*
			 * We succeeded in mapping memory, but not in the right
			 * place.
			 */
			FUNC6(result, size);
			return true;
		}
		return false;
	}
#endif
}