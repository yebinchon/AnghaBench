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
struct bio_set {int /*<<< orphan*/  bio_pool; int /*<<< orphan*/  front_pad; int /*<<< orphan*/  bvec_pool; } ;
struct bio {int /*<<< orphan*/  bi_io_vec; struct bio_set* bi_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct bio *bio)
{
	struct bio_set *bs = bio->bi_pool;
	void *p;

	FUNC1(bio);

	if (bs) {
		FUNC2(&bs->bvec_pool, bio->bi_io_vec, FUNC0(bio));

		/*
		 * If we have front padding, adjust the bio pointer before freeing
		 */
		p = bio;
		p -= bs->front_pad;

		FUNC4(p, &bs->bio_pool);
	} else {
		/* Bio was allocated by bio_kmalloc() */
		FUNC3(bio);
	}
}