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
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  tcache_t ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  TSDN_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,size_t,size_t,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 scalar_t__ total_stack_bytes ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

tcache_t *
FUNC9(tsd_t *tsd) {
	size_t size = sizeof(tcache_t);
	/* Naturally align the pointer stacks. */
	size = FUNC0(size);
	size_t stack_offset = size;
	size += total_stack_bytes;
	size_t alignment = FUNC6(size);
	size = FUNC4(size, alignment);

	tcache_t *tcache = FUNC3(FUNC8(tsd), size, alignment, true,
	    NULL, true, FUNC1(TSDN_NULL, 0, true));
	if (tcache == NULL) {
		return NULL;
	}

	void *avail_array = (void *)((uintptr_t)tcache +
	    (uintptr_t)stack_offset);
	FUNC7(tsd, tcache, avail_array);
	FUNC5(FUNC8(tsd), tcache, FUNC2(tsd, NULL));

	return tcache;
}