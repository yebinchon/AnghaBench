#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned int nlevels; int /*<<< orphan*/  ngroups; TYPE_1__* levels; int /*<<< orphan*/  nbits; } ;
typedef  TYPE_2__ const bitmap_info_t ;
struct TYPE_6__ {int /*<<< orphan*/  group_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*) ; 

__attribute__((used)) static void
FUNC4(const bitmap_info_t *binfo, size_t nbits) {
	bitmap_info_t binfo_dyn;
	FUNC2(&binfo_dyn, nbits);

	FUNC1(FUNC3(binfo), FUNC3(&binfo_dyn),
	    "Unexpected difference between static and dynamic initialization, "
	    "nbits=%zu", nbits);
	FUNC1(binfo->nbits, binfo_dyn.nbits,
	    "Unexpected difference between static and dynamic initialization, "
	    "nbits=%zu", nbits);
#ifdef BITMAP_USE_TREE
	assert_u_eq(binfo->nlevels, binfo_dyn.nlevels,
	    "Unexpected difference between static and dynamic initialization, "
	    "nbits=%zu", nbits);
	{
		unsigned i;

		for (i = 0; i < binfo->nlevels; i++) {
			assert_zu_eq(binfo->levels[i].group_offset,
			    binfo_dyn.levels[i].group_offset,
			    "Unexpected difference between static and dynamic "
			    "initialization, nbits=%zu, level=%u", nbits, i);
		}
	}
#else
	FUNC1(binfo->ngroups, binfo_dyn.ngroups,
	    "Unexpected difference between static and dynamic initialization");
#endif
}