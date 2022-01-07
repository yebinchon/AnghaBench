
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int omap3_control_restore_context () ;
 int omap3_gpmc_restore_context () ;
 int omap_dma_global_context_restore () ;
 int omap_intc_restore_context () ;

__attribute__((used)) static void omap3_core_restore_context(void)
{

 omap3_control_restore_context();

 omap3_gpmc_restore_context();

 omap_intc_restore_context();
 omap_dma_global_context_restore();
}
