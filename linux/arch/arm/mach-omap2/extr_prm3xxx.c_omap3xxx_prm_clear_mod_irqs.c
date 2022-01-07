
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int s16 ;


 int CM_FCLKEN1 ;
 int CM_ICLKEN1 ;
 int CM_ICLKEN3 ;
 int OMAP3430ES2_CM_FCLKEN3 ;
 int OMAP3430ES2_EN_USBHOST2_SHIFT ;
 int OMAP3430ES2_PM_MPUGRPSEL3 ;
 int OMAP3430ES2_PM_WKST3 ;
 int OMAP3430ES2_USBHOST_MOD ;
 int OMAP3430_PM_MPUGRPSEL ;
 int PM_WKST1 ;
 int omap2_cm_read_mod_reg (int ,int ) ;
 int omap2_cm_set_mod_reg_bits (int,int ,int ) ;
 int omap2_cm_write_mod_reg (int,int ,int ) ;
 int omap2_prm_read_mod_reg (int ,int ) ;
 int omap2_prm_write_mod_reg (int,int ,int ) ;

__attribute__((used)) static int omap3xxx_prm_clear_mod_irqs(s16 module, u8 regs, u32 wkst_mask)
{
 u32 wkst, fclk, iclk, clken;
 u16 wkst_off = (regs == 3) ? OMAP3430ES2_PM_WKST3 : PM_WKST1;
 u16 fclk_off = (regs == 3) ? OMAP3430ES2_CM_FCLKEN3 : CM_FCLKEN1;
 u16 iclk_off = (regs == 3) ? CM_ICLKEN3 : CM_ICLKEN1;
 u16 grpsel_off = (regs == 3) ?
  OMAP3430ES2_PM_MPUGRPSEL3 : OMAP3430_PM_MPUGRPSEL;
 int c = 0;

 wkst = omap2_prm_read_mod_reg(module, wkst_off);
 wkst &= omap2_prm_read_mod_reg(module, grpsel_off);
 wkst &= wkst_mask;
 if (wkst) {
  iclk = omap2_cm_read_mod_reg(module, iclk_off);
  fclk = omap2_cm_read_mod_reg(module, fclk_off);
  while (wkst) {
   clken = wkst;
   omap2_cm_set_mod_reg_bits(clken, module, iclk_off);




   if (module == OMAP3430ES2_USBHOST_MOD)
    clken |= 1 << OMAP3430ES2_EN_USBHOST2_SHIFT;
   omap2_cm_set_mod_reg_bits(clken, module, fclk_off);
   omap2_prm_write_mod_reg(wkst, module, wkst_off);
   wkst = omap2_prm_read_mod_reg(module, wkst_off);
   wkst &= wkst_mask;
   c++;
  }
  omap2_cm_write_mod_reg(iclk, module, iclk_off);
  omap2_cm_write_mod_reg(fclk, module, fclk_off);
 }

 return c;
}
