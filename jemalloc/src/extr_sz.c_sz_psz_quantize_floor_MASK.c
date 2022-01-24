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
typedef  scalar_t__ pszind_t ;

/* Variables and functions */
 size_t PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t sz_large_pad ; 
 size_t FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (size_t) ; 

size_t
FUNC3(size_t size) {
	size_t ret;
	pszind_t pind;

	FUNC0(size > 0);
	FUNC0((size & PAGE_MASK) == 0);

	pind = FUNC2(size - sz_large_pad + 1);
	if (pind == 0) {
		/*
		 * Avoid underflow.  This short-circuit would also do the right
		 * thing for all sizes in the range for which there are
		 * PAGE-spaced size classes, but it's simplest to just handle
		 * the one case that would cause erroneous results.
		 */
		return size;
	}
	ret = FUNC1(pind - 1) + sz_large_pad;
	FUNC0(ret <= size);
	return ret;
}