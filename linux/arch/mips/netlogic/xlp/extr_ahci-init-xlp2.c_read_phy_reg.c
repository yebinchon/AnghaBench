
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;


 int PHY_MEM_ACCESS ;
 int nlm_read_sata_reg (int ,int ) ;
 int nlm_write_sata_reg (int ,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static u8 read_phy_reg(u64 regbase, u32 addr, u32 physel)
{
 u32 val;

 nlm_write_sata_reg(regbase, PHY_MEM_ACCESS,
  (0 << 31) | (physel << 24) | (0 << 16) | addr);
 udelay(850);
 val = nlm_read_sata_reg(regbase, PHY_MEM_ACCESS);
 return (val >> 16) & 0xff;
}
