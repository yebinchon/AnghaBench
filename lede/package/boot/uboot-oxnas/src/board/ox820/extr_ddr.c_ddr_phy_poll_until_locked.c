
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 scalar_t__ C_DDR_REG_PHY2 ;

__attribute__((used)) static void ddr_phy_poll_until_locked(void)
{
 volatile UINT reg_tmp = 0;
 volatile UINT locked = 0;


 reg_tmp = *(volatile UINT *) C_DDR_REG_PHY2;



 while (locked == 0) {
  reg_tmp = *(volatile UINT *) C_DDR_REG_PHY2;


  if (reg_tmp & 0xC0000000) {
   locked = 1;
  }
 }
}
