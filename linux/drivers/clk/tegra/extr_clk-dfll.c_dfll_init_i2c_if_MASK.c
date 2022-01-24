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
struct tegra_dfll {int i2c_slave_addr; int i2c_reg; int i2c_fs_rate; scalar_t__ i2c_controller_base; int /*<<< orphan*/  i2c_clk_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DFLL_I2C_CFG ; 
 int DFLL_I2C_CFG_ARB_ENABLE ; 
 int DFLL_I2C_CFG_SIZE_MASK ; 
 int DFLL_I2C_CFG_SLAVE_ADDR_10 ; 
 int DFLL_I2C_CFG_SLAVE_ADDR_SHIFT_10BIT ; 
 int DFLL_I2C_CFG_SLAVE_ADDR_SHIFT_7BIT ; 
 scalar_t__ DFLL_I2C_CLK_DIVISOR ; 
 int DFLL_I2C_CLK_DIVISOR_FS_SHIFT ; 
 int DFLL_I2C_CLK_DIVISOR_HS_SHIFT ; 
 int DFLL_I2C_CLK_DIVISOR_MASK ; 
 int /*<<< orphan*/  DFLL_I2C_VDD_REG_ADDR ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_dfll*) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_dfll*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tegra_dfll *td)
{
	u32 val;

	if (td->i2c_slave_addr > 0x7f) {
		val = td->i2c_slave_addr << DFLL_I2C_CFG_SLAVE_ADDR_SHIFT_10BIT;
		val |= DFLL_I2C_CFG_SLAVE_ADDR_10;
	} else {
		val = td->i2c_slave_addr << DFLL_I2C_CFG_SLAVE_ADDR_SHIFT_7BIT;
	}
	val |= DFLL_I2C_CFG_SIZE_MASK;
	val |= DFLL_I2C_CFG_ARB_ENABLE;
	FUNC4(td, val, DFLL_I2C_CFG);

	FUNC4(td, td->i2c_reg, DFLL_I2C_VDD_REG_ADDR);

	val = FUNC1(td->i2c_clk_rate, td->i2c_fs_rate * 8);
	FUNC0(!val || (val > DFLL_I2C_CLK_DIVISOR_MASK));
	val = (val - 1) << DFLL_I2C_CLK_DIVISOR_FS_SHIFT;

	/* default hs divisor just in case */
	val |= 1 << DFLL_I2C_CLK_DIVISOR_HS_SHIFT;
	FUNC2(val, td->i2c_controller_base + DFLL_I2C_CLK_DIVISOR);
	FUNC3(td);
}