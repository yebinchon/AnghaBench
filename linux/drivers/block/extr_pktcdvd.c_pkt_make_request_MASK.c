#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct request_queue {struct pktcdvd_device* queuedata; } ;
struct TYPE_3__ {scalar_t__ size; } ;
struct pktcdvd_device {TYPE_1__ settings; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {scalar_t__ bi_sector; int bi_size; } ;
struct bio {TYPE_2__ bi_iter; } ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  blk_qc_t ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  BLK_QC_T_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CD_FRAMESIZE ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  PACKET_WRITABLE ; 
 scalar_t__ READ ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,struct bio*) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,char*) ; 
 scalar_t__ FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 struct bio* FUNC6 (struct bio*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*,struct bio**) ; 
 scalar_t__ FUNC8 (scalar_t__,struct pktcdvd_device*) ; 
 int /*<<< orphan*/  pkt_bio_set ; 
 int /*<<< orphan*/  FUNC9 (int,struct pktcdvd_device*,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC10 (struct pktcdvd_device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct pktcdvd_device*,struct bio*) ; 
 int /*<<< orphan*/  FUNC12 (struct request_queue*,struct bio*) ; 
 int /*<<< orphan*/  FUNC13 (struct pktcdvd_device*,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static blk_qc_t FUNC16(struct request_queue *q, struct bio *bio)
{
	struct pktcdvd_device *pd;
	char b[BDEVNAME_SIZE];
	struct bio *split;

	FUNC7(q, &bio);

	pd = q->queuedata;
	if (!pd) {
		FUNC14("%s incorrect request queue\n", FUNC3(bio, b));
		goto end_io;
	}

	FUNC9(2, pd, "start = %6llx stop = %6llx\n",
		(unsigned long long)bio->bi_iter.bi_sector,
		(unsigned long long)FUNC4(bio));

	/*
	 * Clone READ bios so we can have our own bi_end_io callback.
	 */
	if (FUNC2(bio) == READ) {
		FUNC11(pd, bio);
		return BLK_QC_T_NONE;
	}

	if (!FUNC15(PACKET_WRITABLE, &pd->flags)) {
		FUNC13(pd, "WRITE for ro device (%llu)\n",
			   (unsigned long long)bio->bi_iter.bi_sector);
		goto end_io;
	}

	if (!bio->bi_iter.bi_size || (bio->bi_iter.bi_size % CD_FRAMESIZE)) {
		FUNC10(pd, "wrong bio size\n");
		goto end_io;
	}

	do {
		sector_t zone = FUNC8(bio->bi_iter.bi_sector, pd);
		sector_t last_zone = FUNC8(FUNC4(bio) - 1, pd);

		if (last_zone != zone) {
			FUNC0(last_zone != zone + pd->settings.size);

			split = FUNC6(bio, last_zone -
					  bio->bi_iter.bi_sector,
					  GFP_NOIO, &pkt_bio_set);
			FUNC1(split, bio);
		} else {
			split = bio;
		}

		FUNC12(q, split);
	} while (split != bio);

	return BLK_QC_T_NONE;
end_io:
	FUNC5(bio);
	return BLK_QC_T_NONE;
}