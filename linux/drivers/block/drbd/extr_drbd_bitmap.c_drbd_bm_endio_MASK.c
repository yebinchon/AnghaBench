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
struct drbd_device {int /*<<< orphan*/  misc_wait; struct drbd_bitmap* bitmap; } ;
struct drbd_bm_aio_ctx {int flags; int done; int /*<<< orphan*/  kref; int /*<<< orphan*/  in_flight; int /*<<< orphan*/  error; struct drbd_device* device; } ;
struct drbd_bitmap {int /*<<< orphan*/ * bm_pages; } ;
struct bio {TYPE_1__* bi_io_vec; scalar_t__ bi_status; struct drbd_bm_aio_ctx* bi_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  bv_page; } ;

/* Variables and functions */
 int BM_AIO_COPY_PAGES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drbd_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drbd_bm_aio_ctx_destroy ; 
 int /*<<< orphan*/  FUNC10 (struct drbd_device*,char*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  drbd_md_io_page_pool ; 
 int /*<<< orphan*/  drbd_ratelimit_state ; 
 int /*<<< orphan*/  FUNC11 (struct drbd_device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct drbd_device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct bio *bio)
{
	struct drbd_bm_aio_ctx *ctx = bio->bi_private;
	struct drbd_device *device = ctx->device;
	struct drbd_bitmap *b = device->bitmap;
	unsigned int idx = FUNC6(FUNC2(bio));

	if ((ctx->flags & BM_AIO_COPY_PAGES) == 0 &&
	    !FUNC9(b->bm_pages[idx]))
		FUNC11(device, "bitmap page idx %u changed during IO!\n", idx);

	if (bio->bi_status) {
		/* ctx error will hold the completed-last non-zero error code,
		 * in case error codes differ. */
		ctx->error = FUNC4(bio->bi_status);
		FUNC8(b->bm_pages[idx]);
		/* Not identical to on disk version of it.
		 * Is BM_PAGE_IO_ERROR enough? */
		if (FUNC0(&drbd_ratelimit_state))
			FUNC10(device, "IO ERROR %d on bitmap page idx %u\n",
					bio->bi_status, idx);
	} else {
		FUNC5(b->bm_pages[idx]);
		FUNC12(device, "bitmap page idx %u completed\n", idx);
	}

	FUNC7(device, idx);

	if (ctx->flags & BM_AIO_COPY_PAGES)
		FUNC14(bio->bi_io_vec[0].bv_page, &drbd_md_io_page_pool);

	FUNC3(bio);

	if (FUNC1(&ctx->in_flight)) {
		ctx->done = 1;
		FUNC15(&device->misc_wait);
		FUNC13(&ctx->kref, &drbd_bm_aio_ctx_destroy);
	}
}