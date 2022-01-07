
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
typedef int s16 ;


 int omap4_prminst_read_inst_reg (int ,int ,int ) ;
 int omap4_prminst_write_inst_reg (int ,int ,int ,int ) ;

u32 omap4_prminst_rmw_inst_reg_bits(u32 mask, u32 bits, u8 part, s16 inst,
        u16 idx)
{
 u32 v;

 v = omap4_prminst_read_inst_reg(part, inst, idx);
 v &= ~mask;
 v |= bits;
 omap4_prminst_write_inst_reg(v, part, inst, idx);

 return v;
}
