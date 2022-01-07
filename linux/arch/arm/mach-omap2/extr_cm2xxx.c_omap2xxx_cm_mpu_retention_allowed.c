
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CM_FCLKEN1 ;
 int CORE_MOD ;
 int OMAP2420_EN_MMC_MASK ;
 int OMAP24XX_CM_FCLKEN2 ;
 int OMAP24XX_EN_DSS1_MASK ;
 int OMAP24XX_EN_MCSPI1_MASK ;
 int OMAP24XX_EN_MCSPI2_MASK ;
 int OMAP24XX_EN_UART1_MASK ;
 int OMAP24XX_EN_UART2_MASK ;
 int OMAP24XX_EN_UART3_MASK ;
 int omap2_cm_read_mod_reg (int ,int ) ;

int omap2xxx_cm_mpu_retention_allowed(void)
{
 u32 l;


 l = omap2_cm_read_mod_reg(CORE_MOD, CM_FCLKEN1);
 if (l & (OMAP2420_EN_MMC_MASK | OMAP24XX_EN_UART2_MASK |
   OMAP24XX_EN_UART1_MASK | OMAP24XX_EN_MCSPI2_MASK |
   OMAP24XX_EN_MCSPI1_MASK | OMAP24XX_EN_DSS1_MASK))
  return 0;

 l = omap2_cm_read_mod_reg(CORE_MOD, OMAP24XX_CM_FCLKEN2);
 if (l & OMAP24XX_EN_UART3_MASK)
  return 0;

 return 1;
}
