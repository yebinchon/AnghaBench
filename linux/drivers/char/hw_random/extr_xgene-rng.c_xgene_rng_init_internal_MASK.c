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
typedef  int u32 ;
struct xgene_rng_dev {scalar_t__ csr_base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int LONG_RUN_FAIL_MASK ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int) ; 
 int MONOBIT_FAIL_MASK ; 
 int FUNC5 (int,int) ; 
 int NOISE_FAIL_MASK ; 
 int FUNC6 (int,int) ; 
 int POKER_FAIL_MASK ; 
 int FUNC7 (int,int) ; 
 int READY_MASK ; 
 scalar_t__ RNG_ALARMCNT ; 
 scalar_t__ RNG_CONFIG ; 
 scalar_t__ RNG_CONTROL ; 
 scalar_t__ RNG_INTR_STS_ACK ; 
 int RUN_FAIL_MASK ; 
 int FUNC8 (int,int) ; 
 int SHUTDOWN_OFLO_MASK ; 
 int FUNC9 (int,int) ; 
 int STUCK_OUT_MASK ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct xgene_rng_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct xgene_rng_dev *ctx)
{
	u32 val;

	FUNC11(0x00000000, ctx->csr_base + RNG_CONTROL);

	val = FUNC3(0, 10);
	val = FUNC4(val, 10);
	FUNC11(val, ctx->csr_base + RNG_CONFIG);

	val = FUNC0(0, 0xFF);
	FUNC11(val, ctx->csr_base + RNG_ALARMCNT);

	FUNC12(ctx, 0);

	FUNC11(MONOBIT_FAIL_MASK |
		POKER_FAIL_MASK	|
		LONG_RUN_FAIL_MASK |
		RUN_FAIL_MASK |
		NOISE_FAIL_MASK |
		STUCK_OUT_MASK |
		SHUTDOWN_OFLO_MASK |
		READY_MASK, ctx->csr_base + RNG_INTR_STS_ACK);

	val = FUNC1(0, 1);
	val = FUNC5(val, 1);
	val = FUNC7(val, 1);
	val = FUNC2(val, 1);
	val = FUNC8(val, 1);
	val = FUNC6(val, 1);
	val = FUNC10(val, 1);
	val = FUNC9(val, 1);
	FUNC11(val, ctx->csr_base + RNG_CONTROL);
}