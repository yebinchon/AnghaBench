
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int EEXIST ;
 int OMAP_MEM0_RETSTATE_MASK ;
 int OMAP_MEM1_RETSTATE_MASK ;
 int OMAP_MEM2_RETSTATE_MASK ;
 int OMAP_MEM3_RETSTATE_MASK ;
 int OMAP_MEM4_RETSTATE_MASK ;
 int WARN_ON (int) ;

u32 omap2_pwrdm_get_mem_bank_retst_mask(u8 bank)
{
 switch (bank) {
 case 0:
  return OMAP_MEM0_RETSTATE_MASK;
 case 1:
  return OMAP_MEM1_RETSTATE_MASK;
 case 2:
  return OMAP_MEM2_RETSTATE_MASK;
 case 3:
  return OMAP_MEM3_RETSTATE_MASK;
 case 4:
  return OMAP_MEM4_RETSTATE_MASK;
 default:
  WARN_ON(1);
  return -EEXIST;
 }
 return 0;
}
