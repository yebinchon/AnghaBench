
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int SBCR ;
 unsigned int SCBR_I2CCEN ;
 unsigned int SCBR_I2CMEN ;
 unsigned int fpga_read_reg (int ) ;
 int fpga_write_reg (unsigned int,int ) ;
 int i2c_register_board_info (int ,int ,int ) ;
 int sdk7786_i2c_devices ;

__attribute__((used)) static int sdk7786_i2c_setup(void)
{
 unsigned int tmp;




 tmp = fpga_read_reg(SBCR);
 tmp &= ~SCBR_I2CCEN;
 tmp |= SCBR_I2CMEN;
 fpga_write_reg(tmp, SBCR);

 return i2c_register_board_info(0, sdk7786_i2c_devices,
           ARRAY_SIZE(sdk7786_i2c_devices));
}
