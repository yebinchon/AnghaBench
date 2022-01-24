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
struct bio {int /*<<< orphan*/  bi_io_vec; int /*<<< orphan*/  bi_iter; int /*<<< orphan*/  bi_write_hint; int /*<<< orphan*/  bi_ioprio; int /*<<< orphan*/  bi_opf; int /*<<< orphan*/  bi_partno; int /*<<< orphan*/  bi_disk; scalar_t__ bi_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_CLONED ; 
 int /*<<< orphan*/  BIO_THROTTLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,struct bio*) ; 
 scalar_t__ FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 

void FUNC6(struct bio *bio, struct bio *bio_src)
{
	FUNC0(bio->bi_pool && FUNC1(bio));

	/*
	 * most users will be overriding ->bi_disk with a new target,
	 * so we don't set nor calculate new physical/hw segment counts here
	 */
	bio->bi_disk = bio_src->bi_disk;
	bio->bi_partno = bio_src->bi_partno;
	FUNC4(bio, BIO_CLONED);
	if (FUNC3(bio_src, BIO_THROTTLED))
		FUNC4(bio, BIO_THROTTLED);
	bio->bi_opf = bio_src->bi_opf;
	bio->bi_ioprio = bio_src->bi_ioprio;
	bio->bi_write_hint = bio_src->bi_write_hint;
	bio->bi_iter = bio_src->bi_iter;
	bio->bi_io_vec = bio_src->bi_io_vec;

	FUNC2(bio, bio_src);
	FUNC5(bio);
}