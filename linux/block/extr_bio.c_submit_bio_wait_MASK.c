#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bio {int /*<<< orphan*/  bi_status; int /*<<< orphan*/  bi_opf; int /*<<< orphan*/  bi_end_io; int /*<<< orphan*/ * bi_private; TYPE_1__* bi_disk; } ;
struct TYPE_2__ {int /*<<< orphan*/  lockdep_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REQ_SYNC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  submit_bio_wait_endio ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct bio *bio)
{
	FUNC0(done, bio->bi_disk->lockdep_map);

	bio->bi_private = &done;
	bio->bi_end_io = submit_bio_wait_endio;
	bio->bi_opf |= REQ_SYNC;
	FUNC2(bio);
	FUNC3(&done);

	return FUNC1(bio->bi_status);
}