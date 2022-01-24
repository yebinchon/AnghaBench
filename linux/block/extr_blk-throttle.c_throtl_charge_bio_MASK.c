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
struct throtl_grp {unsigned int* bytes_disp; unsigned int* last_bytes_disp; int /*<<< orphan*/ * last_io_disp; int /*<<< orphan*/ * io_disp; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_THROTTLED ; 
 int FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct bio*) ; 

__attribute__((used)) static void FUNC4(struct throtl_grp *tg, struct bio *bio)
{
	bool rw = FUNC0(bio);
	unsigned int bio_size = FUNC3(bio);

	/* Charge the bio to the group */
	tg->bytes_disp[rw] += bio_size;
	tg->io_disp[rw]++;
	tg->last_bytes_disp[rw] += bio_size;
	tg->last_io_disp[rw]++;

	/*
	 * BIO_THROTTLED is used to prevent the same bio to be throttled
	 * more than once as a throttled bio will go through blk-throtl the
	 * second time when it eventually gets issued.  Set it when a bio
	 * is being charged to a tg.
	 */
	if (!FUNC1(bio, BIO_THROTTLED))
		FUNC2(bio, BIO_THROTTLED);
}