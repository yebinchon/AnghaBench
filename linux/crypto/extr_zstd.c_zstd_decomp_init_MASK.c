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
struct zstd_ctx {int /*<<< orphan*/  dwksp; int /*<<< orphan*/  dctx; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 size_t FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t const) ; 

__attribute__((used)) static int FUNC4(struct zstd_ctx *ctx)
{
	int ret = 0;
	const size_t wksp_size = FUNC0();

	ctx->dwksp = FUNC3(wksp_size);
	if (!ctx->dwksp) {
		ret = -ENOMEM;
		goto out;
	}

	ctx->dctx = FUNC1(ctx->dwksp, wksp_size);
	if (!ctx->dctx) {
		ret = -EINVAL;
		goto out_free;
	}
out:
	return ret;
out_free:
	FUNC2(ctx->dwksp);
	goto out;
}