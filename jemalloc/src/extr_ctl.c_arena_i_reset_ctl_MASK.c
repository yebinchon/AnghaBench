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
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,size_t const*,size_t,void*,size_t*,void*,size_t,unsigned int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int
FUNC4(tsd_t *tsd, const size_t *mib, size_t miblen, void *oldp,
    size_t *oldlenp, void *newp, size_t newlen) {
	int ret;
	unsigned arena_ind;
	arena_t *arena;

	ret = FUNC0(tsd, mib, miblen, oldp, oldlenp,
	    newp, newlen, &arena_ind, &arena);
	if (ret != 0) {
		return ret;
	}

	FUNC3(tsd, arena_ind);
	FUNC1(tsd, arena);
	FUNC2(tsd, arena_ind);

	return ret;
}