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
struct biovec_slab {int /*<<< orphan*/  slab; } ;
struct bio_vec {int dummy; } ;
typedef  int /*<<< orphan*/  mempool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int BVEC_POOL_MAX ; 
 unsigned int BVEC_POOL_NR ; 
 struct biovec_slab* bvec_slabs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bio_vec*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_vec*,int /*<<< orphan*/ *) ; 

void FUNC3(mempool_t *pool, struct bio_vec *bv, unsigned int idx)
{
	if (!idx)
		return;
	idx--;

	FUNC0(idx >= BVEC_POOL_NR);

	if (idx == BVEC_POOL_MAX) {
		FUNC2(bv, pool);
	} else {
		struct biovec_slab *bvs = bvec_slabs + idx;

		FUNC1(bvs->slab, bv);
	}
}