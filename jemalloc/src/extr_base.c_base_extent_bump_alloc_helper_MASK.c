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
typedef  int /*<<< orphan*/  extent_t ;

/* Variables and functions */
 uintptr_t FUNC0 (uintptr_t,size_t) ; 
 size_t QUANTUM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC6(extent_t *extent, size_t *gap_size, size_t size,
    size_t alignment) {
	void *ret;

	FUNC1(alignment == FUNC0(alignment, QUANTUM));
	FUNC1(size == FUNC0(size, alignment));

	*gap_size = FUNC0((uintptr_t)FUNC2(extent),
	    alignment) - (uintptr_t)FUNC2(extent);
	ret = (void *)((uintptr_t)FUNC2(extent) + *gap_size);
	FUNC1(FUNC4(extent) >= *gap_size + size);
	FUNC3(extent, (void *)((uintptr_t)FUNC2(extent) +
	    *gap_size + size), FUNC4(extent) - *gap_size - size,
	    FUNC5(extent));
	return ret;
}