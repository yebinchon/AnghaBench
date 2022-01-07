
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct xive_irq_data {unsigned int esb_shift; void* trig_mmio; void* trig_page; void* eoi_mmio; void* eoi_page; int hw_irq; void* src_chip; int flags; } ;
typedef scalar_t__ s64 ;
typedef int __be64 ;
typedef int __be32 ;


 int EINVAL ;
 int ENOMEM ;
 int OPAL_XIVE_IRQ_EOI_VIA_FW ;
 int OPAL_XIVE_IRQ_LSI ;
 int OPAL_XIVE_IRQ_MASK_VIA_FW ;
 int OPAL_XIVE_IRQ_SHIFT_BUG ;
 int OPAL_XIVE_IRQ_STORE_EOI ;
 int XIVE_IRQ_FLAG_EOI_FW ;
 int XIVE_IRQ_FLAG_LSI ;
 int XIVE_IRQ_FLAG_MASK_FW ;
 int XIVE_IRQ_FLAG_SHIFT_BUG ;
 int XIVE_IRQ_FLAG_STORE_EOI ;
 void* be32_to_cpu (int ) ;
 void* be64_to_cpu (int ) ;
 void* ioremap (void*,unsigned int) ;
 int memset (struct xive_irq_data*,int ,int) ;
 scalar_t__ opal_xive_get_irq_info (int ,int *,int *,int *,int *,int *) ;
 int pr_err (char*,int ,...) ;

int xive_native_populate_irq_data(u32 hw_irq, struct xive_irq_data *data)
{
 __be64 flags, eoi_page, trig_page;
 __be32 esb_shift, src_chip;
 u64 opal_flags;
 s64 rc;

 memset(data, 0, sizeof(*data));

 rc = opal_xive_get_irq_info(hw_irq, &flags, &eoi_page, &trig_page,
        &esb_shift, &src_chip);
 if (rc) {
  pr_err("opal_xive_get_irq_info(0x%x) returned %lld\n",
         hw_irq, rc);
  return -EINVAL;
 }

 opal_flags = be64_to_cpu(flags);
 if (opal_flags & OPAL_XIVE_IRQ_STORE_EOI)
  data->flags |= XIVE_IRQ_FLAG_STORE_EOI;
 if (opal_flags & OPAL_XIVE_IRQ_LSI)
  data->flags |= XIVE_IRQ_FLAG_LSI;
 if (opal_flags & OPAL_XIVE_IRQ_SHIFT_BUG)
  data->flags |= XIVE_IRQ_FLAG_SHIFT_BUG;
 if (opal_flags & OPAL_XIVE_IRQ_MASK_VIA_FW)
  data->flags |= XIVE_IRQ_FLAG_MASK_FW;
 if (opal_flags & OPAL_XIVE_IRQ_EOI_VIA_FW)
  data->flags |= XIVE_IRQ_FLAG_EOI_FW;
 data->eoi_page = be64_to_cpu(eoi_page);
 data->trig_page = be64_to_cpu(trig_page);
 data->esb_shift = be32_to_cpu(esb_shift);
 data->src_chip = be32_to_cpu(src_chip);

 data->eoi_mmio = ioremap(data->eoi_page, 1u << data->esb_shift);
 if (!data->eoi_mmio) {
  pr_err("Failed to map EOI page for irq 0x%x\n", hw_irq);
  return -ENOMEM;
 }

 data->hw_irq = hw_irq;

 if (!data->trig_page)
  return 0;
 if (data->trig_page == data->eoi_page) {
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
