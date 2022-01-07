
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s16 ;


 int omap4_prcm_mpu_read_inst_reg (int ,int ) ;
 int omap4_prcm_mpu_write_inst_reg (int ,int ,int ) ;

u32 omap4_prcm_mpu_rmw_inst_reg_bits(u32 mask, u32 bits, s16 inst, s16 reg)
{
 u32 v;

 v = omap4_prcm_mpu_read_inst_reg(inst, reg);
 v &= ~mask;
 v |= bits;
 omap4_prcm_mpu_write_inst_reg(v, inst, reg);

 return v;
}
