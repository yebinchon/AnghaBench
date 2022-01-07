
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int s16 ;


 int OMAP2_CM_CLKSTCTRL ;
 int __ffs (int) ;
 int omap2_cm_read_mod_reg (int ,int ) ;
 int omap2_cm_write_mod_reg (int,int ,int ) ;

__attribute__((used)) static void _write_clktrctrl(u8 c, s16 module, u32 mask)
{
 u32 v;

 v = omap2_cm_read_mod_reg(module, OMAP2_CM_CLKSTCTRL);
 v &= ~mask;
 v |= c << __ffs(mask);
 omap2_cm_write_mod_reg(v, module, OMAP2_CM_CLKSTCTRL);
}
