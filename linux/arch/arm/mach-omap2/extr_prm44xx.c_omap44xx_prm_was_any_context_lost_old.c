
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int s16 ;


 scalar_t__ omap4_prminst_read_inst_reg (int ,int ,int ) ;

__attribute__((used)) static bool omap44xx_prm_was_any_context_lost_old(u8 part, s16 inst, u16 idx)
{
 return (omap4_prminst_read_inst_reg(part, inst, idx)) ? 1 : 0;
}
