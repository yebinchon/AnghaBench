
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int CM_CLKEN ;
 int EN_APLL_LOCKED ;
 int PLL_MOD ;
 int omap2_cm_read_mod_reg (int ,int ) ;
 int omap2_cm_write_mod_reg (int,int ,int ) ;

__attribute__((used)) static void _omap2xxx_apll_disable(u8 enable_bit)
{
 u32 v;

 v = omap2_cm_read_mod_reg(PLL_MOD, CM_CLKEN);
 v &= ~(EN_APLL_LOCKED << enable_bit);
 omap2_cm_write_mod_reg(v, PLL_MOD, CM_CLKEN);
}
