
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMA_ERRATA_3_3 ;
 int SET_DMA_ERRATA (int ) ;
 int cpu_is_omap15xx () ;

__attribute__((used)) static unsigned configure_dma_errata(void)
{
 unsigned errata = 0;





 if (!cpu_is_omap15xx())
  SET_DMA_ERRATA(DMA_ERRATA_3_3);

 return errata;
}
