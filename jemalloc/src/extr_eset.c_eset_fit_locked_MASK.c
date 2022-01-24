#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_5__ {int /*<<< orphan*/  mtx; } ;
typedef  TYPE_1__ eset_t ;

/* Variables and functions */
 size_t PAGE ; 
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

extent_t *
FUNC4(tsdn_t *tsdn, eset_t *eset, size_t esize, size_t alignment) {
	FUNC3(tsdn, &eset->mtx);

	size_t max_size = esize + FUNC0(alignment) - PAGE;
	/* Beware size_t wrap-around. */
	if (max_size < esize) {
		return NULL;
	}

	extent_t *extent = FUNC1(tsdn, eset, max_size);

	if (alignment > PAGE && extent == NULL) {
		/*
		 * max_size guarantees the alignment requirement but is rather
		 * pessimistic.  Next we try to satisfy the aligned allocation
		 * with sizes in [esize, max_size).
		 */
		extent = FUNC2(eset, esize, max_size, alignment);
	}

	return extent;
}