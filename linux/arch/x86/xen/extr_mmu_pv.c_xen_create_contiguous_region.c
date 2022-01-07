
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int phys_addr_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int maddr; } ;


 int ENOMEM ;
 unsigned int MAX_CONTIG_ORDER ;
 unsigned int PAGE_SIZE ;
 unsigned long* discontig_frames ;
 int memset (void*,int ,unsigned int) ;
 scalar_t__ phys_to_virt (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 TYPE_1__ virt_to_machine (unsigned long) ;
 unsigned long virt_to_pfn (unsigned long) ;
 int xen_exchange_memory (unsigned long,int ,unsigned long*,int,unsigned int,unsigned long*,unsigned int) ;
 int xen_remap_exchanged_ptes (unsigned long,unsigned int,unsigned long*,unsigned long) ;
 int xen_reservation_lock ;
 int xen_zap_pfn_range (unsigned long,unsigned int,unsigned long*,int *) ;

int xen_create_contiguous_region(phys_addr_t pstart, unsigned int order,
     unsigned int address_bits,
     dma_addr_t *dma_handle)
{
 unsigned long *in_frames = discontig_frames, out_frame;
 unsigned long flags;
 int success;
 unsigned long vstart = (unsigned long)phys_to_virt(pstart);







 if (unlikely(order > MAX_CONTIG_ORDER))
  return -ENOMEM;

 memset((void *) vstart, 0, PAGE_SIZE << order);

 spin_lock_irqsave(&xen_reservation_lock, flags);


 xen_zap_pfn_range(vstart, order, in_frames, ((void*)0));


 out_frame = virt_to_pfn(vstart);
 success = xen_exchange_memory(1UL << order, 0, in_frames,
          1, order, &out_frame,
          address_bits);


 if (success)
  xen_remap_exchanged_ptes(vstart, order, ((void*)0), out_frame);
 else
  xen_remap_exchanged_ptes(vstart, order, in_frames, 0);

 spin_unlock_irqrestore(&xen_reservation_lock, flags);

 *dma_handle = virt_to_machine(vstart).maddr;
 return success ? 0 : -ENOMEM;
}
