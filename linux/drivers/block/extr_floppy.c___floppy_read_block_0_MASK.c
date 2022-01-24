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
struct rb0_cbdata {int drive; int /*<<< orphan*/  complete; } ;
struct page {int dummy; } ;
struct block_device {size_t bd_block_size; } ;
struct bio_vec {int dummy; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {int bi_flags; int /*<<< orphan*/  bi_end_io; struct rb0_cbdata* bi_private; TYPE_1__ bi_iter; } ;

/* Variables and functions */
 int BIO_QUIET ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,struct page*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,struct bio_vec*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,struct block_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  floppy_rb0_cb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct block_device *bdev, int drive)
{
	struct bio bio;
	struct bio_vec bio_vec;
	struct page *page;
	struct rb0_cbdata cbdata;
	size_t size;

	page = FUNC1(GFP_NOIO);
	if (!page) {
		FUNC7();
		return -ENOMEM;
	}

	size = bdev->bd_block_size;
	if (!size)
		size = 1024;

	cbdata.drive = drive;

	FUNC3(&bio, &bio_vec, 1);
	FUNC4(&bio, bdev);
	FUNC2(&bio, page, size, 0);

	bio.bi_iter.bi_sector = 0;
	bio.bi_flags |= (1 << BIO_QUIET);
	bio.bi_private = &cbdata;
	bio.bi_end_io = floppy_rb0_cb;
	FUNC5(&bio, REQ_OP_READ, 0);

	FUNC6(&cbdata.complete);

	FUNC8(&bio);
	FUNC7();

	FUNC9(&cbdata.complete);

	FUNC0(page);

	return 0;
}