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
typedef  int uint32_t ;
struct clk_hw {int dummy; } ;
struct axi_clkgen {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MMCM_REG_CLKOUT0_1 ; 
 int /*<<< orphan*/  MMCM_REG_CLKOUT0_2 ; 
 int /*<<< orphan*/  MMCM_REG_CLK_DIV ; 
 int /*<<< orphan*/  MMCM_REG_CLK_FB1 ; 
 int /*<<< orphan*/  MMCM_REG_CLK_FB2 ; 
 int /*<<< orphan*/  MMCM_REG_FILTER1 ; 
 int /*<<< orphan*/  MMCM_REG_FILTER2 ; 
 int /*<<< orphan*/  MMCM_REG_LOCK1 ; 
 int /*<<< orphan*/  MMCM_REG_LOCK2 ; 
 int /*<<< orphan*/  MMCM_REG_LOCK3 ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long,unsigned int*,unsigned int*,unsigned int*) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct axi_clkgen*,int /*<<< orphan*/ ,int,int) ; 
 struct axi_clkgen* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *clk_hw,
	unsigned long rate, unsigned long parent_rate)
{
	struct axi_clkgen *axi_clkgen = FUNC5(clk_hw);
	unsigned int d, m, dout;
	unsigned int nocount;
	unsigned int high;
	unsigned int edge;
	unsigned int low;
	uint32_t filter;
	uint32_t lock;

	if (parent_rate == 0 || rate == 0)
		return -EINVAL;

	FUNC1(parent_rate, rate, &d, &m, &dout);

	if (d == 0 || dout == 0 || m == 0)
		return -EINVAL;

	filter = FUNC2(m - 1);
	lock = FUNC3(m - 1);

	FUNC0(dout, &low, &high, &edge, &nocount);
	FUNC4(axi_clkgen, MMCM_REG_CLKOUT0_1,
		(high << 6) | low, 0xefff);
	FUNC4(axi_clkgen, MMCM_REG_CLKOUT0_2,
		(edge << 7) | (nocount << 6), 0x03ff);

	FUNC0(d, &low, &high, &edge, &nocount);
	FUNC4(axi_clkgen, MMCM_REG_CLK_DIV,
		(edge << 13) | (nocount << 12) | (high << 6) | low, 0x3fff);

	FUNC0(m, &low, &high, &edge, &nocount);
	FUNC4(axi_clkgen, MMCM_REG_CLK_FB1,
		(high << 6) | low, 0xefff);
	FUNC4(axi_clkgen, MMCM_REG_CLK_FB2,
		(edge << 7) | (nocount << 6), 0x03ff);

	FUNC4(axi_clkgen, MMCM_REG_LOCK1, lock & 0x3ff, 0x3ff);
	FUNC4(axi_clkgen, MMCM_REG_LOCK2,
		(((lock >> 16) & 0x1f) << 10) | 0x1, 0x7fff);
	FUNC4(axi_clkgen, MMCM_REG_LOCK3,
		(((lock >> 24) & 0x1f) << 10) | 0x3e9, 0x7fff);
	FUNC4(axi_clkgen, MMCM_REG_FILTER1, filter >> 16, 0x9900);
	FUNC4(axi_clkgen, MMCM_REG_FILTER2, filter, 0x9900);

	return 0;
}