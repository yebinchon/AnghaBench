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
typedef  int u16 ;
struct rockchip_mmc_clock {int shift; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int EINVAL ; 
 int ROCKCHIP_MMC_DEGREE_MASK ; 
 int ROCKCHIP_MMC_DELAYNUM_MASK ; 
 int ROCKCHIP_MMC_DELAYNUM_OFFSET ; 
 int ROCKCHIP_MMC_DELAY_ELEMENT_PSEC ; 
 int ROCKCHIP_MMC_DELAY_SEL ; 
 unsigned long FUNC1 (struct clk_hw*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct rockchip_mmc_clock* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct rockchip_mmc_clock *mmc_clock = FUNC3(hw);
	unsigned long rate = FUNC1(hw);
	u32 raw_value;
	u16 degrees;
	u32 delay_num = 0;

	/* See the comment for rockchip_mmc_set_phase below */
	if (!rate)
		return -EINVAL;

	raw_value = FUNC2(mmc_clock->reg) >> (mmc_clock->shift);

	degrees = (raw_value & ROCKCHIP_MMC_DEGREE_MASK) * 90;

	if (raw_value & ROCKCHIP_MMC_DELAY_SEL) {
		/* degrees/delaynum * 1000000 */
		unsigned long factor = (ROCKCHIP_MMC_DELAY_ELEMENT_PSEC / 10) *
					36 * (rate / 10000);

		delay_num = (raw_value & ROCKCHIP_MMC_DELAYNUM_MASK);
		delay_num >>= ROCKCHIP_MMC_DELAYNUM_OFFSET;
		degrees += FUNC0(delay_num * factor, 1000000);
	}

	return degrees % 360;
}