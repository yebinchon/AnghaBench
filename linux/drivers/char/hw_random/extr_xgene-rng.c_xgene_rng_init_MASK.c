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
struct xgene_rng_dev {int /*<<< orphan*/  datum_size; scalar_t__ csr_base; int /*<<< orphan*/  dev; int /*<<< orphan*/  revision; int /*<<< orphan*/  failure_timer; scalar_t__ failure_cnt; } ;
struct hwrng {scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ RNG_EIP_REV ; 
 int /*<<< orphan*/  RNG_MAX_DATUM ; 
 scalar_t__ RNG_OPTIONS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xgene_rng_expired_timer ; 
 int /*<<< orphan*/  FUNC6 (struct xgene_rng_dev*) ; 

__attribute__((used)) static int FUNC7(struct hwrng *rng)
{
	struct xgene_rng_dev *ctx = (struct xgene_rng_dev *) rng->priv;

	ctx->failure_cnt = 0;
	FUNC5(&ctx->failure_timer, xgene_rng_expired_timer, 0);

	ctx->revision = FUNC4(ctx->csr_base + RNG_EIP_REV);

	FUNC3(ctx->dev, "Rev %d.%d.%d\n",
		FUNC1(ctx->revision),
		FUNC2(ctx->revision),
		FUNC0(ctx->revision));

	FUNC3(ctx->dev, "Options 0x%08X",
		FUNC4(ctx->csr_base + RNG_OPTIONS));

	FUNC6(ctx);

	ctx->datum_size = RNG_MAX_DATUM;

	return 0;
}