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
struct index_state {int version; int /*<<< orphan*/  cache_nr; int /*<<< orphan*/  ce_mem_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC4(struct index_state *istate,
			const char *mmap, size_t mmap_size, unsigned long src_offset)
{
	unsigned long consumed;

	if (istate->version == 4) {
		FUNC3(&istate->ce_mem_pool,
				FUNC1(istate->cache_nr));
	} else {
		FUNC3(&istate->ce_mem_pool,
				FUNC0(mmap_size, istate->cache_nr));
	}

	consumed = FUNC2(istate, istate->ce_mem_pool,
					0, istate->cache_nr, mmap, src_offset, NULL);
	return consumed;
}