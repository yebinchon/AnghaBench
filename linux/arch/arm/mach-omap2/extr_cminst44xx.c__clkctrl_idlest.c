
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int OMAP4430_IDLEST_MASK ;
 int OMAP4430_IDLEST_SHIFT ;
 int omap4_cminst_read_inst_reg (int ,int ,int ) ;

__attribute__((used)) static u32 _clkctrl_idlest(u8 part, u16 inst, u16 clkctrl_offs)
{
 u32 v = omap4_cminst_read_inst_reg(part, inst, clkctrl_offs);
 v &= OMAP4430_IDLEST_MASK;
 v >>= OMAP4430_IDLEST_SHIFT;
 return v;
}
