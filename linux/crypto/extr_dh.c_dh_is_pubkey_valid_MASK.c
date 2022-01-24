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
struct dh_ctx {int /*<<< orphan*/  p; scalar_t__ q; } ;
typedef  int /*<<< orphan*/  MPI ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct dh_ctx *ctx, MPI y)
{
	if (FUNC5(!ctx->p))
		return -EINVAL;

	/*
	 * Step 1: Verify that 2 <= y <= p - 2.
	 *
	 * The upper limit check is actually y < p instead of y < p - 1
	 * as the mpi_sub_ui function is yet missing.
	 */
	if (FUNC2(y, 1) < 1 || FUNC1(y, ctx->p) >= 0)
		return -EINVAL;

	/* Step 2: Verify that 1 = y^q mod p */
	if (ctx->q) {
		MPI val = FUNC0(0);
		int ret;

		if (!val)
			return -ENOMEM;

		ret = FUNC4(val, y, ctx->q, ctx->p);

		if (ret) {
			FUNC3(val);
			return ret;
		}

		ret = FUNC2(val, 1);

		FUNC3(val);

		if (ret != 0)
			return -EINVAL;
	}

	return 0;
}