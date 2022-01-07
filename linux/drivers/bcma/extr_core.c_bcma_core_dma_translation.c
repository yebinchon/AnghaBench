
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bcma_device {TYPE_1__* bus; } ;
struct TYPE_2__ {int hosttype; } ;


 int BCMA_DMA_TRANSLATION_DMA32_CMT ;
 int BCMA_DMA_TRANSLATION_DMA64_CMT ;
 int BCMA_DMA_TRANSLATION_NONE ;


 int BCMA_IOST ;
 int BCMA_IOST_DMA64 ;
 int bcma_aread32 (struct bcma_device*,int ) ;
 int bcma_err (TYPE_1__*,char*,int) ;

u32 bcma_core_dma_translation(struct bcma_device *core)
{
 switch (core->bus->hosttype) {
 case 128:
  return 0;
 case 129:
  if (bcma_aread32(core, BCMA_IOST) & BCMA_IOST_DMA64)
   return BCMA_DMA_TRANSLATION_DMA64_CMT;
  else
   return BCMA_DMA_TRANSLATION_DMA32_CMT;
 default:
  bcma_err(core->bus, "DMA translation unknown for host %d\n",
    core->bus->hosttype);
 }
 return BCMA_DMA_TRANSLATION_NONE;
}
