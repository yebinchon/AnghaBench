
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OMAP343X_CONTROL_MEM_WKUP ;
 int OMAP343X_PADCONF_ETK_D14 ;
 int omap3_control_save_context () ;
 int omap3_ctrl_save_padconf () ;
 int omap3_gpmc_save_context () ;
 int omap_ctrl_readl (int ) ;
 int omap_ctrl_writel (int ,scalar_t__) ;
 int omap_dma_global_context_save () ;
 int omap_intc_save_context () ;

__attribute__((used)) static void omap3_core_save_context(void)
{
 omap3_ctrl_save_padconf();





 omap_ctrl_writel(omap_ctrl_readl(OMAP343X_PADCONF_ETK_D14),
  OMAP343X_CONTROL_MEM_WKUP + 0x2a0);


 omap_intc_save_context();

 omap3_gpmc_save_context();

 omap3_control_save_context();
 omap_dma_global_context_save();
}
