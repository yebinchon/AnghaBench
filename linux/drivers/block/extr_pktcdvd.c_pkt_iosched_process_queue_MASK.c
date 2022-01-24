#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pending_bios; } ;
struct TYPE_5__ {int writing; scalar_t__ last_write; scalar_t__ successive_reads; int /*<<< orphan*/  lock; int /*<<< orphan*/  read_queue; int /*<<< orphan*/  write_queue; int /*<<< orphan*/  attention; } ;
struct pktcdvd_device {scalar_t__ read_speed; scalar_t__ write_speed; TYPE_3__ cdrw; TYPE_2__ iosched; } ;
struct TYPE_4__ {scalar_t__ bi_sector; int bi_size; } ;
struct bio {TYPE_1__ bi_iter; } ;

/* Variables and functions */
 scalar_t__ HI_SPEED_SWITCH ; 
 scalar_t__ MAX_SPEED ; 
 scalar_t__ READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 scalar_t__ FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct bio* FUNC6 (int /*<<< orphan*/ *) ; 
 struct bio* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (int,struct pktcdvd_device*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct pktcdvd_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct pktcdvd_device*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct pktcdvd_device *pd)
{

	if (FUNC1(&pd->iosched.attention) == 0)
		return;
	FUNC2(&pd->iosched.attention, 0);

	for (;;) {
		struct bio *bio;
		int reads_queued, writes_queued;

		FUNC12(&pd->iosched.lock);
		reads_queued = !FUNC5(&pd->iosched.read_queue);
		writes_queued = !FUNC5(&pd->iosched.write_queue);
		FUNC13(&pd->iosched.lock);

		if (!reads_queued && !writes_queued)
			break;

		if (pd->iosched.writing) {
			int need_write_seek = 1;
			FUNC12(&pd->iosched.lock);
			bio = FUNC6(&pd->iosched.write_queue);
			FUNC13(&pd->iosched.lock);
			if (bio && (bio->bi_iter.bi_sector ==
				    pd->iosched.last_write))
				need_write_seek = 0;
			if (need_write_seek && reads_queued) {
				if (FUNC1(&pd->cdrw.pending_bios) > 0) {
					FUNC9(2, pd, "write, waiting\n");
					break;
				}
				FUNC10(pd);
				pd->iosched.writing = 0;
			}
		} else {
			if (!reads_queued && writes_queued) {
				if (FUNC1(&pd->cdrw.pending_bios) > 0) {
					FUNC9(2, pd, "read, waiting\n");
					break;
				}
				pd->iosched.writing = 1;
			}
		}

		FUNC12(&pd->iosched.lock);
		if (pd->iosched.writing)
			bio = FUNC7(&pd->iosched.write_queue);
		else
			bio = FUNC7(&pd->iosched.read_queue);
		FUNC13(&pd->iosched.lock);

		if (!bio)
			continue;

		if (FUNC3(bio) == READ)
			pd->iosched.successive_reads +=
				bio->bi_iter.bi_size >> 10;
		else {
			pd->iosched.successive_reads = 0;
			pd->iosched.last_write = FUNC4(bio);
		}
		if (pd->iosched.successive_reads >= HI_SPEED_SWITCH) {
			if (pd->read_speed == pd->write_speed) {
				pd->read_speed = MAX_SPEED;
				FUNC11(pd, pd->write_speed, pd->read_speed);
			}
		} else {
			if (pd->read_speed != pd->write_speed) {
				pd->read_speed = pd->write_speed;
				FUNC11(pd, pd->write_speed, pd->read_speed);
			}
		}

		FUNC0(&pd->cdrw.pending_bios);
		FUNC8(bio);
	}
}