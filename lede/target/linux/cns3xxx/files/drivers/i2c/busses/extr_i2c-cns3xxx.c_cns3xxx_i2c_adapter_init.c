
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cns3xxx_i2c {int dev; } ;
struct clk {int dummy; } ;


 int CNS3xxx_I2C_CLK ;
 int CNS3xxx_I2C_ENABLE () ;
 int CNS3xxx_I2C_ENABLE_INTR () ;
 int I2C_ACTION_DONE_FLAG ;
 int I2C_BUS_ERROR_FLAG ;
 scalar_t__ I2C_CONTROLLER_REG ;
 int I2C_INTERRUPT_STATUS_REG ;
 int I2C_TIME_OUT_REG ;
 int I2C_TWI_OUT_DLY_REG ;
 scalar_t__ WARN_ON (int) ;
 int clk_get_rate (struct clk*) ;
 struct clk* devm_clk_get (int ,char*) ;

__attribute__((used)) static void cns3xxx_i2c_adapter_init(struct cns3xxx_i2c *i2c)
{
 struct clk *clk;

 clk = devm_clk_get(i2c->dev, "cpu");
 if (WARN_ON(!clk))
  return;


 I2C_CONTROLLER_REG = 0;


 I2C_TIME_OUT_REG =
     (((((clk_get_rate(clk) / (2 * CNS3xxx_I2C_CLK)) -
  1) & 0x3FF) << 8) | (1 << 7) | 0x7F);
 I2C_TWI_OUT_DLY_REG |= 0x3;


 CNS3xxx_I2C_ENABLE_INTR();


 I2C_INTERRUPT_STATUS_REG |= (I2C_ACTION_DONE_FLAG | I2C_BUS_ERROR_FLAG);


 CNS3xxx_I2C_ENABLE();
}
