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
struct clk {int rate_offset; TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_CKCTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  api_ck_p ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

unsigned long FUNC3(struct clk *clk)
{
	int dsor;

	/* Calculate divisor encoded as 2-bit exponent
	 *
	 * The clock control bits are in DSP domain,
	 * so api_ck is needed for access.
	 * Note that DSP_CKCTL virt addr = phys addr, so
	 * we must use __raw_readw() instead of omap_readw().
	 */
	FUNC2(api_ck_p);
	dsor = 1 << (3 & (FUNC0(DSP_CKCTL) >> clk->rate_offset));
	FUNC1(api_ck_p);

	return clk->parent->rate / dsor;
}