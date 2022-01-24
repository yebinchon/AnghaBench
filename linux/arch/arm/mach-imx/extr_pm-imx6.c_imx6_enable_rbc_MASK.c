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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  BM_CCR_RBC_BYPASS_COUNT ; 
 int /*<<< orphan*/  BM_CCR_RBC_EN ; 
 scalar_t__ CCR ; 
 scalar_t__ ccm_base ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC6(bool enable)
{
	u32 val;

	/*
	 * need to mask all interrupts in GPC before
	 * operating RBC configurations
	 */
	FUNC0();

	/* configure RBC enable bit */
	val = FUNC2(ccm_base + CCR);
	val &= ~BM_CCR_RBC_EN;
	val |= enable ? BM_CCR_RBC_EN : 0;
	FUNC5(val, ccm_base + CCR);

	/* configure RBC count */
	val = FUNC2(ccm_base + CCR);
	val &= ~BM_CCR_RBC_BYPASS_COUNT;
	val |= enable ? BM_CCR_RBC_BYPASS_COUNT : 0;
	FUNC4(val, ccm_base + CCR);

	/*
	 * need to delay at least 2 cycles of CKIL(32K)
	 * due to hardware design requirement, which is
	 * ~61us, here we use 65us for safe
	 */
	FUNC3(65);

	/* restore GPC interrupt mask settings */
	FUNC1();
}