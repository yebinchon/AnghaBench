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
 int FILL_BYTE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MALLOCX_ZERO ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 void* FUNC5 (size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int,size_t) ; 
 size_t FUNC7 (size_t,int) ; 
 void* FUNC8 (void*,size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (void*,int,size_t,size_t) ; 
 size_t FUNC10 (void*,size_t,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC11(size_t szmin, size_t szmax) {
	int flags = FUNC0(FUNC1()) | MALLOCX_ZERO;
	size_t sz, nsz;
	void *p;
#define FILL_BYTE 0x7aU

	sz = szmax;
	p = FUNC5(sz, flags);
	FUNC3(p, "Unexpected mallocx() error");
	FUNC2(FUNC9(p, 0x00, 0, sz), "Memory not filled: sz=%zu",
	    sz);

	/*
	 * Fill with non-zero so that non-debug builds are more likely to detect
	 * errors.
	 */
	FUNC6(p, FILL_BYTE, sz);
	FUNC2(FUNC9(p, FILL_BYTE, 0, sz),
	    "Memory not filled: sz=%zu", sz);

	/* Shrink in place so that we can expect growing in place to succeed. */
	sz = szmin;
	if (FUNC10(p, sz, 0, flags) != sz) {
		p = FUNC8(p, sz, flags);
		FUNC3(p, "Unexpected rallocx() failure");
	}
	FUNC2(FUNC9(p, FILL_BYTE, 0, sz),
	    "Memory not filled: sz=%zu", sz);

	for (sz = szmin; sz < szmax; sz = nsz) {
		nsz = FUNC7(sz+1, flags);
		if (FUNC10(p, sz+1, 0, flags) != nsz) {
			p = FUNC8(p, sz+1, flags);
			FUNC3(p, "Unexpected rallocx() failure");
		}
		FUNC2(FUNC9(p, FILL_BYTE, 0, sz),
		    "Memory not filled: sz=%zu", sz);
		FUNC2(FUNC9(p, 0x00, sz, nsz-sz),
		    "Memory not filled: sz=%zu, nsz-sz=%zu", sz, nsz-sz);
		FUNC6((void *)((uintptr_t)p + sz), FILL_BYTE, nsz-sz);
		FUNC2(FUNC9(p, FILL_BYTE, 0, nsz),
		    "Memory not filled: nsz=%zu", nsz);
	}

	FUNC4(p, flags);
}