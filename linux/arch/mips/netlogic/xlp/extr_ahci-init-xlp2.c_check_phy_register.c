
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;


 int pr_info (char*,int ,int ,scalar_t__,char*) ;
 scalar_t__ read_phy_reg (int ,int ,int ) ;

__attribute__((used)) static void check_phy_register(u64 regbase, u32 addr, u32 physel, u8 xdata)
{
 u8 data;

 data = read_phy_reg(regbase, addr, physel);
 pr_info("PHY read addr = 0x%x physel = %d data = 0x%x %s\n",
  addr, physel, data, data == xdata ? "TRUE" : "FALSE");
}
