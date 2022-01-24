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
typedef  int u64 ;
typedef  unsigned int u32 ;
struct clk_si5341 {int freq_vco; int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SI5341_PLL_M_NUM ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,unsigned int*) ; 
 struct clk_si5341* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
		unsigned long parent_rate)
{
	struct clk_si5341 *data = FUNC2(hw);
	int err;
	u64 res;
	u64 m_num;
	u32 m_den;
	unsigned int shift;

	/* Assume that PDIV is not being used, just read the PLL setting */
	err = FUNC1(data->regmap, SI5341_PLL_M_NUM,
				&m_num, &m_den);
	if (err < 0)
		return 0;

	if (!m_num || !m_den)
		return 0;

	/*
	 * Though m_num is 64-bit, only the upper bits are actually used. While
	 * calculating m_num and m_den, they are shifted as far as possible to
	 * the left. To avoid 96-bit division here, we just shift them back so
	 * we can do with just 64 bits.
	 */
	shift = 0;
	res = m_num;
	while (res & 0xffff00000000ULL) {
		++shift;
		res >>= 1;
	}
	res *= parent_rate;
	FUNC0(res, (m_den >> shift));

	/* We cannot return the actual frequency in 32 bit, store it locally */
	data->freq_vco = res;

	/* Report kHz since the value is out of range */
	FUNC0(res, 1000);

	return (unsigned long)res;
}