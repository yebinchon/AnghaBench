
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct eeh_pe {int state; TYPE_1__* parent; } ;
struct TYPE_4__ {int (* get_state ) (struct eeh_pe*,int *) ;} ;
struct TYPE_3__ {int state; } ;


 int EEH_PE_ISOLATED ;
 int EEH_PE_RECOVERING ;
 int EEH_PE_REMOVED ;
 int EEH_PE_STATE_NORMAL ;
 int EEH_PE_STATE_RESET ;
 int EEH_PE_STATE_STOPPED_DMA ;
 int EEH_PE_STATE_STOPPED_IO_DMA ;
 int EEH_PE_STATE_UNAVAIL ;
 int EEH_STATE_DMA_ENABLED ;
 int EEH_STATE_MMIO_ENABLED ;
 int EEH_STATE_RESET_ACTIVE ;
 int ENODEV ;
 int ENOENT ;
 TYPE_2__* eeh_ops ;
 int stub1 (struct eeh_pe*,int *) ;

int eeh_pe_get_state(struct eeh_pe *pe)
{
 int result, ret = 0;
 bool rst_active, dma_en, mmio_en;


 if (!pe)
  return -ENODEV;

 if (!eeh_ops || !eeh_ops->get_state)
  return -ENOENT;







 if (pe->parent &&
     !(pe->state & EEH_PE_REMOVED) &&
     (pe->parent->state & (EEH_PE_ISOLATED | EEH_PE_RECOVERING)))
  return EEH_PE_STATE_UNAVAIL;

 result = eeh_ops->get_state(pe, ((void*)0));
 rst_active = !!(result & EEH_STATE_RESET_ACTIVE);
 dma_en = !!(result & EEH_STATE_DMA_ENABLED);
 mmio_en = !!(result & EEH_STATE_MMIO_ENABLED);

 if (rst_active)
  ret = EEH_PE_STATE_RESET;
 else if (dma_en && mmio_en)
  ret = EEH_PE_STATE_NORMAL;
 else if (!dma_en && !mmio_en)
  ret = EEH_PE_STATE_STOPPED_IO_DMA;
 else if (!dma_en && mmio_en)
  ret = EEH_PE_STATE_STOPPED_DMA;
 else
  ret = EEH_PE_STATE_UNAVAIL;

 return ret;
}
