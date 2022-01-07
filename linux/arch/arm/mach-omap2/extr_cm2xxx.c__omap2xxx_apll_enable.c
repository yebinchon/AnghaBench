
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
 int omap2xxx_cm_wait_module_ready (int ,int ,int,int) ;

__attribute__((used)) static int _omap2xxx_apll_enable(u8 enable_bit, u8 status_bit)
{
 u32 v, m;

 m = EN_APLL_LOCKED << enable_bit;

 v = omap2_cm_read_mod_reg(PLL_MOD, CM_CLKEN);
 if (v & m)
  return 0;

 v |= m;
 omap2_cm_write_mod_reg(v, PLL_MOD, CM_CLKEN);

 omap2xxx_cm_wait_module_ready(0, PLL_MOD, 1, status_bit);





 return 0;
}
