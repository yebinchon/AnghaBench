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
struct hd_struct {scalar_t__ start_sect; } ;
struct TYPE_3__ {scalar_t__ bi_sector; int /*<<< orphan*/  bi_size; } ;
struct bio {scalar_t__ bi_partno; TYPE_1__ bi_iter; TYPE_2__* bi_disk; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ REQ_OP_ZONE_RESET ; 
 struct hd_struct* FUNC0 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bio*,struct hd_struct*) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 scalar_t__ FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct hd_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static inline int FUNC12(struct bio *bio)
{
	struct hd_struct *p;
	int ret = -EIO;

	FUNC7();
	p = FUNC0(bio->bi_disk, bio->bi_partno);
	if (FUNC11(!p))
		goto out;
	if (FUNC11(FUNC9(p, bio->bi_iter.bi_size)))
		goto out;
	if (FUNC11(FUNC2(bio, p)))
		goto out;

	/*
	 * Zone reset does not include bi_size so bio_sectors() is always 0.
	 * Include a test for the reset op code and perform the remap if needed.
	 */
	if (FUNC4(bio) || FUNC3(bio) == REQ_OP_ZONE_RESET) {
		if (FUNC1(bio, FUNC6(p)))
			goto out;
		bio->bi_iter.bi_sector += p->start_sect;
		FUNC10(bio->bi_disk->queue, bio, FUNC5(p),
				      bio->bi_iter.bi_sector - p->start_sect);
	}
	bio->bi_partno = 0;
	ret = 0;
out:
	FUNC8();
	return ret;
}