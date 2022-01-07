
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int OMAP4430_MODULEMODE_MASK ;
 int omap4_cminst_read_inst_reg (int ,int ,int ) ;
 int omap4_cminst_write_inst_reg (int ,int ,int ,int ) ;

__attribute__((used)) static void omap4_cminst_module_disable(u8 part, u16 inst, u16 clkctrl_offs)
{
 u32 v;

 v = omap4_cminst_read_inst_reg(part, inst, clkctrl_offs);
 v &= ~OMAP4430_MODULEMODE_MASK;
 omap4_cminst_write_inst_reg(v, part, inst, clkctrl_offs);
}
