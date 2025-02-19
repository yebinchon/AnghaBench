
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __clk_is_enabled (int ) ;
 scalar_t__ omap2xxx_cm_fclks_active () ;
 scalar_t__ omap_dma_running () ;
 int osc_ck ;

__attribute__((used)) static int omap2_can_sleep(void)
{
 if (omap2xxx_cm_fclks_active())
  return 0;
 if (__clk_is_enabled(osc_ck))
  return 0;
 if (omap_dma_running())
  return 0;

 return 1;
}
