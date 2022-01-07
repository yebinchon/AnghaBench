
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ s64 ;
typedef int __be64 ;


 int ENOENT ;
 int be64_to_cpu (int ) ;
 scalar_t__ opal_xive_get_irq_info (scalar_t__,int *,int *,int *,int *,int *) ;
 scalar_t__ xive_native_alloc_irq () ;
 int xive_native_free_irq (scalar_t__) ;

int pnv_ocxl_alloc_xive_irq(u32 *irq, u64 *trigger_addr)
{
 __be64 flags, trigger_page;
 s64 rc;
 u32 hwirq;

 hwirq = xive_native_alloc_irq();
 if (!hwirq)
  return -ENOENT;

 rc = opal_xive_get_irq_info(hwirq, &flags, ((void*)0), &trigger_page, ((void*)0),
    ((void*)0));
 if (rc || !trigger_page) {
  xive_native_free_irq(hwirq);
  return -ENOENT;
 }
 *irq = hwirq;
 *trigger_addr = be64_to_cpu(trigger_page);
 return 0;

}
