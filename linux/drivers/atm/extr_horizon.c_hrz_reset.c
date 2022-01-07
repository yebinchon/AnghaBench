
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int hrz_dev ;


 int CONTROL_0_REG ;
 int RESET_ATM ;
 int RESET_HORIZON ;
 int RESET_HOST ;
 int RESET_RX ;
 int RESET_TX ;
 int rd_regl (int const*,int ) ;
 int udelay (int) ;
 int wr_regl (int const*,int ,int) ;

__attribute__((used)) static void hrz_reset (const hrz_dev * dev) {
  u32 control_0_reg = rd_regl (dev, CONTROL_0_REG);



  control_0_reg = control_0_reg & RESET_HORIZON;
  wr_regl (dev, CONTROL_0_REG, control_0_reg);
  while (control_0_reg & RESET_HORIZON)
    control_0_reg = rd_regl (dev, CONTROL_0_REG);


  wr_regl (dev, CONTROL_0_REG, control_0_reg |
    RESET_ATM | RESET_RX | RESET_TX | RESET_HOST);

  udelay (1000);

  wr_regl (dev, CONTROL_0_REG, control_0_reg);
}
