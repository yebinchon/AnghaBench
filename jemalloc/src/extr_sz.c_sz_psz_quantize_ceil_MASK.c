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
 size_t PAGE_MASK ; 
 size_t SC_LARGE_MAXCLASS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t sz_large_pad ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 size_t FUNC3 (size_t) ; 

size_t
FUNC4(size_t size) {
	size_t ret;

	FUNC0(size > 0);
	FUNC0(size - sz_large_pad <= SC_LARGE_MAXCLASS);
	FUNC0((size & PAGE_MASK) == 0);

	ret = FUNC3(size);
	if (ret < size) {
		/*
		 * Skip a quantization that may have an adequately large extent,
		 * because under-sized extents may be mixed in.  This only
		 * happens when an unusual size is requested, i.e. for aligned
		 * allocation, and is just one of several places where linear
		 * search would potentially find sufficiently aligned available
		 * memory somewhere lower.
		 */
		ret = FUNC1(FUNC2(ret - sz_large_pad + 1)) +
		    sz_large_pad;
	}
	return ret;
}