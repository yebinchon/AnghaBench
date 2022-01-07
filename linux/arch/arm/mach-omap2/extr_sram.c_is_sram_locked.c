
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OMAP24XX_VA_READPERM0 ;
 int OMAP24XX_VA_REQINFOPERM0 ;
 int OMAP24XX_VA_WRITEPERM0 ;
 scalar_t__ OMAP2_DEVICE_TYPE_GP ;
 int OMAP34XX_VA_ADDR_MATCH2 ;
 int OMAP34XX_VA_READPERM0 ;
 int OMAP34XX_VA_REQINFOPERM0 ;
 int OMAP34XX_VA_SMS_RG_ATT0 ;
 int OMAP34XX_VA_WRITEPERM0 ;
 scalar_t__ cpu_is_omap242x () ;
 scalar_t__ cpu_is_omap34xx () ;
 scalar_t__ omap_type () ;
 int writel_relaxed (int,int ) ;

__attribute__((used)) static int is_sram_locked(void)
{
 if (OMAP2_DEVICE_TYPE_GP == omap_type()) {

  if (cpu_is_omap242x()) {
   writel_relaxed(0xFF, OMAP24XX_VA_REQINFOPERM0);
   writel_relaxed(0xCFDE, OMAP24XX_VA_READPERM0);
   writel_relaxed(0xCFDE, OMAP24XX_VA_WRITEPERM0);
  }
  if (cpu_is_omap34xx()) {
   writel_relaxed(0xFFFF, OMAP34XX_VA_REQINFOPERM0);
   writel_relaxed(0xFFFF, OMAP34XX_VA_READPERM0);
   writel_relaxed(0xFFFF, OMAP34XX_VA_WRITEPERM0);
   writel_relaxed(0x0, OMAP34XX_VA_ADDR_MATCH2);
   writel_relaxed(0xFFFFFFFF, OMAP34XX_VA_SMS_RG_ATT0);
  }
  return 0;
 } else
  return 1;
}
