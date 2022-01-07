
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;


 int PHY_MEM_ACCESS ;
 int nlm_write_sata_reg (int ,int ,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static void write_phy_reg(u64 regbase, u32 addr, u32 physel, u8 data)
{
 nlm_write_sata_reg(regbase, PHY_MEM_ACCESS,
  (1u << 31) | (physel << 24) | (data << 16) | addr);
 udelay(850);
}
