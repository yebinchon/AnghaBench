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
struct uncached_pool {int /*<<< orphan*/ * pool; } ;

/* Variables and functions */
 int MAX_NUMNODES ; 
 int /*<<< orphan*/  N_HIGH_MEMORY ; 
 int PAGE_SIZE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (struct uncached_pool*,int) ; 
 struct uncached_pool* uncached_pools ; 
 scalar_t__ FUNC4 (int) ; 

unsigned long FUNC5(int starting_nid, int n_pages)
{
	unsigned long uc_addr;
	struct uncached_pool *uc_pool;
	int nid;

	if (FUNC4(starting_nid >= MAX_NUMNODES))
		return 0;

	if (starting_nid < 0)
		starting_nid = FUNC2();
	nid = starting_nid;

	do {
		if (!FUNC1(nid, N_HIGH_MEMORY))
			continue;
		uc_pool = &uncached_pools[nid];
		if (uc_pool->pool == NULL)
			continue;
		do {
			uc_addr = FUNC0(uc_pool->pool,
						 n_pages * PAGE_SIZE);
			if (uc_addr != 0)
				return uc_addr;
		} while (FUNC3(uc_pool, nid) == 0);

	} while ((nid = (nid + 1) % MAX_NUMNODES) != starting_nid);

	return 0;
}