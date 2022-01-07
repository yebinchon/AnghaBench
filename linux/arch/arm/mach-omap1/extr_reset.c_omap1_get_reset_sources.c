
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int ARM_SYSST ;
 int ARM_SYSST_ARM_WDRST_SHIFT ;
 int ARM_SYSST_EXT_RST_SHIFT ;
 int ARM_SYSST_GLOB_SWRST_SHIFT ;
 int ARM_SYSST_POR_SHIFT ;
 int OMAP1_IO_ADDRESS (int ) ;
 int OMAP_EXTWARM_RST_SRC_ID_SHIFT ;
 int OMAP_GLOBAL_COLD_RST_SRC_ID_SHIFT ;
 int OMAP_GLOBAL_WARM_RST_SRC_ID_SHIFT ;
 int OMAP_MPU_WD_RST_SRC_ID_SHIFT ;
 int __raw_readw (int ) ;

u32 omap1_get_reset_sources(void)
{
 u32 ret = 0;
 u16 rs;

 rs = __raw_readw(OMAP1_IO_ADDRESS(ARM_SYSST));

 if (rs & (1 << ARM_SYSST_POR_SHIFT))
  ret |= 1 << OMAP_GLOBAL_COLD_RST_SRC_ID_SHIFT;
 if (rs & (1 << ARM_SYSST_EXT_RST_SHIFT))
  ret |= 1 << OMAP_EXTWARM_RST_SRC_ID_SHIFT;
 if (rs & (1 << ARM_SYSST_ARM_WDRST_SHIFT))
  ret |= 1 << OMAP_MPU_WD_RST_SRC_ID_SHIFT;
 if (rs & (1 << ARM_SYSST_GLOB_SWRST_SHIFT))
  ret |= 1 << OMAP_GLOBAL_WARM_RST_SRC_ID_SHIFT;

 return ret;
}
