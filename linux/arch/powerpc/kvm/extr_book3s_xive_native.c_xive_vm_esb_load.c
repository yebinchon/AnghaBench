
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct xive_irq_data {int flags; scalar_t__ eoi_mmio; } ;


 int XIVE_IRQ_FLAG_SHIFT_BUG ;
 int in_be64 (scalar_t__) ;

__attribute__((used)) static u8 xive_vm_esb_load(struct xive_irq_data *xd, u32 offset)
{
 u64 val;

 if (xd->flags & XIVE_IRQ_FLAG_SHIFT_BUG)
  offset |= offset << 4;

 val = in_be64(xd->eoi_mmio + offset);
 return (u8)val;
}
