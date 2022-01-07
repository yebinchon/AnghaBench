
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int s16 ;


 int OMAP44XX_PRCM_MPU_REGADDR (int ,int ) ;
 int readl_relaxed (int ) ;

u32 omap4_prcm_mpu_read_inst_reg(s16 inst, u16 reg)
{
 return readl_relaxed(OMAP44XX_PRCM_MPU_REGADDR(inst, reg));
}
