
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dfll {int i2c_slave_addr; int i2c_reg; int i2c_fs_rate; scalar_t__ i2c_controller_base; int i2c_clk_rate; } ;


 int BUG_ON (int) ;
 int DFLL_I2C_CFG ;
 int DFLL_I2C_CFG_ARB_ENABLE ;
 int DFLL_I2C_CFG_SIZE_MASK ;
 int DFLL_I2C_CFG_SLAVE_ADDR_10 ;
 int DFLL_I2C_CFG_SLAVE_ADDR_SHIFT_10BIT ;
 int DFLL_I2C_CFG_SLAVE_ADDR_SHIFT_7BIT ;
 scalar_t__ DFLL_I2C_CLK_DIVISOR ;
 int DFLL_I2C_CLK_DIVISOR_FS_SHIFT ;
 int DFLL_I2C_CLK_DIVISOR_HS_SHIFT ;
 int DFLL_I2C_CLK_DIVISOR_MASK ;
 int DFLL_I2C_VDD_REG_ADDR ;
 int DIV_ROUND_UP (int ,int) ;
 int __raw_writel (int,scalar_t__) ;
 int dfll_i2c_wmb (struct tegra_dfll*) ;
 int dfll_i2c_writel (struct tegra_dfll*,int,int ) ;

__attribute__((used)) static void dfll_init_i2c_if(struct tegra_dfll *td)
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
 dfll_i2c_writel(td, val, DFLL_I2C_CFG);

 dfll_i2c_writel(td, td->i2c_reg, DFLL_I2C_VDD_REG_ADDR);

 val = DIV_ROUND_UP(td->i2c_clk_rate, td->i2c_fs_rate * 8);
 BUG_ON(!val || (val > DFLL_I2C_CLK_DIVISOR_MASK));
 val = (val - 1) << DFLL_I2C_CLK_DIVISOR_FS_SHIFT;


 val |= 1 << DFLL_I2C_CLK_DIVISOR_HS_SHIFT;
 __raw_writel(val, td->i2c_controller_base + DFLL_I2C_CLK_DIVISOR);
 dfll_i2c_wmb(td);
}
