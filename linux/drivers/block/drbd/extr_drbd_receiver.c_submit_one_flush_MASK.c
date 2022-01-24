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
struct one_flush_context {struct issue_flush_context* ctx; struct drbd_device* device; } ;
struct issue_flush_context {int /*<<< orphan*/  pending; int /*<<< orphan*/  error; } ;
struct drbd_device {int /*<<< orphan*/  flags; int /*<<< orphan*/  flush_jif; TYPE_1__* ldev; int /*<<< orphan*/  kref; } ;
struct bio {int bi_opf; int /*<<< orphan*/  bi_end_io; struct one_flush_context* bi_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  backing_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FLUSH_PENDING ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int REQ_OP_FLUSH ; 
 int REQ_PREFLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drbd_destroy_device ; 
 int /*<<< orphan*/  FUNC4 (struct drbd_device*,char*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct one_flush_context*) ; 
 struct one_flush_context* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  one_flush_endio ; 
 int /*<<< orphan*/  FUNC8 (struct drbd_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct bio*) ; 

__attribute__((used)) static void FUNC11(struct drbd_device *device, struct issue_flush_context *ctx)
{
	struct bio *bio = FUNC1(GFP_NOIO, 0);
	struct one_flush_context *octx = FUNC6(sizeof(*octx), GFP_NOIO);
	if (!bio || !octx) {
		FUNC4(device, "Could not allocate a bio, CANNOT ISSUE FLUSH\n");
		/* FIXME: what else can I do now?  disconnecting or detaching
		 * really does not help to improve the state of the world, either.
		 */
		FUNC5(octx);
		if (bio)
			FUNC2(bio);

		ctx->error = -ENOMEM;
		FUNC8(device);
		FUNC7(&device->kref, drbd_destroy_device);
		return;
	}

	octx->device = device;
	octx->ctx = ctx;
	FUNC3(bio, device->ldev->backing_bdev);
	bio->bi_private = octx;
	bio->bi_end_io = one_flush_endio;
	bio->bi_opf = REQ_OP_FLUSH | REQ_PREFLUSH;

	device->flush_jif = jiffies;
	FUNC9(FLUSH_PENDING, &device->flags);
	FUNC0(&ctx->pending);
	FUNC10(bio);
}