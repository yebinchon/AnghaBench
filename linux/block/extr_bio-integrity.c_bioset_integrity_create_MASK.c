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
struct bio_set {int /*<<< orphan*/  bio_integrity_pool; int /*<<< orphan*/  bvec_integrity_pool; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  bip_slab ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct bio_set *bs, int pool_size)
{
	if (FUNC3(&bs->bio_integrity_pool))
		return 0;

	if (FUNC2(&bs->bio_integrity_pool,
				   pool_size, bip_slab))
		return -1;

	if (FUNC0(&bs->bvec_integrity_pool, pool_size)) {
		FUNC1(&bs->bio_integrity_pool);
		return -1;
	}

	return 0;
}