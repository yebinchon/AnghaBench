
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xive_irq_data {unsigned long eoi_page; unsigned long esb_shift; unsigned long trig_page; void* trig_mmio; void* eoi_mmio; int hw_irq; int src_chip; int flags; } ;


 int EINVAL ;
 int ENOMEM ;
 int XIVE_INVALID_CHIP_ID ;
 int XIVE_IRQ_FLAG_H_INT_ESB ;
 int XIVE_IRQ_FLAG_LSI ;
 int XIVE_IRQ_FLAG_STORE_EOI ;
 unsigned long XIVE_SRC_H_INT_ESB ;
 unsigned long XIVE_SRC_LSI ;
 unsigned long XIVE_SRC_STORE_EOI ;
 unsigned long XIVE_SRC_TRIGGER ;
 void* ioremap (unsigned long,unsigned int) ;
 int memset (struct xive_irq_data*,int ,int) ;
 long plpar_int_get_source_info (int ,int ,unsigned long*,unsigned long*,unsigned long*,unsigned long*) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int xive_spapr_populate_irq_data(u32 hw_irq, struct xive_irq_data *data)
{
 long rc;
 unsigned long flags;
 unsigned long eoi_page;
 unsigned long trig_page;
 unsigned long esb_shift;

 memset(data, 0, sizeof(*data));

 rc = plpar_int_get_source_info(0, hw_irq, &flags, &eoi_page, &trig_page,
           &esb_shift);
 if (rc)
  return -EINVAL;

 if (flags & XIVE_SRC_H_INT_ESB)
  data->flags |= XIVE_IRQ_FLAG_H_INT_ESB;
 if (flags & XIVE_SRC_STORE_EOI)
  data->flags |= XIVE_IRQ_FLAG_STORE_EOI;
 if (flags & XIVE_SRC_LSI)
  data->flags |= XIVE_IRQ_FLAG_LSI;
 data->eoi_page = eoi_page;
 data->esb_shift = esb_shift;
 data->trig_page = trig_page;





 data->src_chip = XIVE_INVALID_CHIP_ID;

 data->eoi_mmio = ioremap(data->eoi_page, 1u << data->esb_shift);
 if (!data->eoi_mmio) {
  pr_err("Failed to map EOI page for irq 0x%x\n", hw_irq);
  return -ENOMEM;
 }

 data->hw_irq = hw_irq;


 if (flags & XIVE_SRC_TRIGGER) {
  data->trig_mmio = data->eoi_mmio;
  return 0;
 }

 data->trig_mmio = ioremap(data->trig_page, 1u << data->esb_shift);
 if (!data->trig_mmio) {
  pr_err("Failed to map trigger page for irq 0x%x\n", hw_irq);
  return -ENOMEM;
 }
 return 0;
}
