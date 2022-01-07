
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int s16 ;


 int omap2_prm_read_mod_reg (int ,int ) ;
 int omap2_prm_write_mod_reg (int ,int ,int ) ;

__attribute__((used)) static int omap2xxx_prm_clear_mod_irqs(s16 module, u8 regs, u32 wkst_mask)
{
 u32 wkst;

 wkst = omap2_prm_read_mod_reg(module, regs);
 wkst &= wkst_mask;
 omap2_prm_write_mod_reg(wkst, module, regs);
 return 0;
}
