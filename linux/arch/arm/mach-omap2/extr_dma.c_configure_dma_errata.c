
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMA_ERRATA_3_3 ;
 int DMA_ERRATA_IFRAME_BUFFERING ;
 int DMA_ERRATA_PARALLEL_CHANNELS ;
 int DMA_ERRATA_i378 ;
 int DMA_ERRATA_i541 ;
 int DMA_ERRATA_i88 ;
 int DMA_ROMCODE_BUG ;
 scalar_t__ OMAP2430_REV_ES1_0 ;
 scalar_t__ OMAP2_DEVICE_TYPE_GP ;
 scalar_t__ OMAP3430_REV_ES1_0 ;
 int SET_DMA_ERRATA (int ) ;
 scalar_t__ cpu_class_is_omap2 () ;
 scalar_t__ cpu_is_omap2420 () ;
 scalar_t__ cpu_is_omap2430 () ;
 scalar_t__ cpu_is_omap34xx () ;
 scalar_t__ omap_type () ;

__attribute__((used)) static unsigned configure_dma_errata(void)
{
 unsigned errata = 0;
 if (cpu_is_omap2420() || (cpu_is_omap2430() &&
    (omap_type() == OMAP2430_REV_ES1_0))) {

  SET_DMA_ERRATA(DMA_ERRATA_IFRAME_BUFFERING);
  SET_DMA_ERRATA(DMA_ERRATA_PARALLEL_CHANNELS);
 }






 if (cpu_class_is_omap2())
  SET_DMA_ERRATA(DMA_ERRATA_i378);
 if (cpu_is_omap34xx())
  SET_DMA_ERRATA(DMA_ERRATA_i541);







 if (omap_type() == OMAP3430_REV_ES1_0)
  SET_DMA_ERRATA(DMA_ERRATA_i88);





 SET_DMA_ERRATA(DMA_ERRATA_3_3);
 if (cpu_is_omap34xx() && (omap_type() != OMAP2_DEVICE_TYPE_GP))
  SET_DMA_ERRATA(DMA_ROMCODE_BUG);

 return errata;
}
