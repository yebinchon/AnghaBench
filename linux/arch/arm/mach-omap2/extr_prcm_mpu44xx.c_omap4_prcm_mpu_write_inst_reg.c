
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int s16 ;


 int OMAP44XX_PRCM_MPU_REGADDR (int ,int ) ;
 int writel_relaxed (int ,int ) ;

void omap4_prcm_mpu_write_inst_reg(u32 val, s16 inst, u16 reg)
{
 writel_relaxed(val, OMAP44XX_PRCM_MPU_REGADDR(inst, reg));
}
