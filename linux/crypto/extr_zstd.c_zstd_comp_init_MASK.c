#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zstd_ctx {int /*<<< orphan*/  cwksp; int /*<<< orphan*/  cctx; } ;
struct TYPE_3__ {int /*<<< orphan*/  cParams; } ;
typedef  TYPE_1__ ZSTD_parameters ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t const) ; 
 TYPE_1__ FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct zstd_ctx *ctx)
{
	int ret = 0;
	const ZSTD_parameters params = FUNC4();
	const size_t wksp_size = FUNC0(params.cParams);

	ctx->cwksp = FUNC3(wksp_size);
	if (!ctx->cwksp) {
		ret = -ENOMEM;
		goto out;
	}

	ctx->cctx = FUNC1(ctx->cwksp, wksp_size);
	if (!ctx->cctx) {
		ret = -EINVAL;
		goto out_free;
	}
out:
	return ret;
out_free:
	FUNC2(ctx->cwksp);
	goto out;
}