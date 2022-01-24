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
struct one_flush_context {struct issue_flush_context* ctx; struct drbd_device* device; } ;
struct issue_flush_context {int /*<<< orphan*/  done; int /*<<< orphan*/  pending; int /*<<< orphan*/  error; } ;
struct drbd_device {int /*<<< orphan*/  kref; int /*<<< orphan*/  flags; } ;
struct bio {scalar_t__ bi_status; struct one_flush_context* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLUSH_PENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drbd_destroy_device ; 
 int /*<<< orphan*/  FUNC5 (struct drbd_device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct one_flush_context*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drbd_device*) ; 

__attribute__((used)) static void FUNC9(struct bio *bio)
{
	struct one_flush_context *octx = bio->bi_private;
	struct drbd_device *device = octx->device;
	struct issue_flush_context *ctx = octx->ctx;

	if (bio->bi_status) {
		ctx->error = FUNC2(bio->bi_status);
		FUNC5(device, "local disk FLUSH FAILED with status %d\n", bio->bi_status);
	}
	FUNC6(octx);
	FUNC1(bio);

	FUNC3(FLUSH_PENDING, &device->flags);
	FUNC8(device);
	FUNC7(&device->kref, drbd_destroy_device);

	if (FUNC0(&ctx->pending))
		FUNC4(&ctx->done);
}