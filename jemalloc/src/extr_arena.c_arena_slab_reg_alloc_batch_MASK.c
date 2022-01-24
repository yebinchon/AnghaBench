#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__* bitmap; } ;
typedef  TYPE_1__ slab_data_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  scalar_t__ bitmap_t ;
struct TYPE_6__ {size_t reg_size; int /*<<< orphan*/  bitmap_info; } ;
typedef  TYPE_2__ bin_info_t ;

/* Variables and functions */
 unsigned int LG_BITMAP_GROUP_NBITS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (scalar_t__*,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 (scalar_t__) ; 

__attribute__((used)) static void
FUNC9(extent_t *slab, const bin_info_t *bin_info,
			   unsigned cnt, void** ptrs) {
	slab_data_t *slab_data = FUNC7(slab);

	FUNC0(FUNC5(slab) >= cnt);
	FUNC0(!FUNC1(slab_data->bitmap, &bin_info->bitmap_info));

#if (! defined JEMALLOC_INTERNAL_POPCOUNTL) || (defined BITMAP_USE_TREE)
	for (unsigned i = 0; i < cnt; i++) {
		size_t regind = FUNC2(slab_data->bitmap,
					   &bin_info->bitmap_info);
		*(ptrs + i) = (void *)((uintptr_t)FUNC4(slab) +
		    (uintptr_t)(bin_info->reg_size * regind));
	}
#else
	unsigned group = 0;
	bitmap_t g = slab_data->bitmap[group];
	unsigned i = 0;
	while (i < cnt) {
		while (g == 0) {
			g = slab_data->bitmap[++group];
		}
		size_t shift = group << LG_BITMAP_GROUP_NBITS;
		size_t pop = popcount_lu(g);
		if (pop > (cnt - i)) {
			pop = cnt - i;
		}

		/*
		 * Load from memory locations only once, outside the
		 * hot loop below.
		 */
		uintptr_t base = (uintptr_t)extent_addr_get(slab);
		uintptr_t regsize = (uintptr_t)bin_info->reg_size;
		while (pop--) {
			size_t bit = cfs_lu(&g);
			size_t regind = shift + bit;
			*(ptrs + i) = (void *)(base + regsize * regind);

			i++;
		}
		slab_data->bitmap[group] = g;
	}
#endif
	FUNC6(slab, cnt);
}