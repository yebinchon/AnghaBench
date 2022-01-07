
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 unsigned int MAX_CONTIG_ORDER ;
 unsigned int PAGE_SIZE ;
 unsigned long* discontig_frames ;
 int memset (void*,int ,unsigned int) ;
 scalar_t__ phys_to_virt (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 unsigned long virt_to_mfn (unsigned long) ;
 int xen_exchange_memory (int,unsigned int,unsigned long*,unsigned long,int ,unsigned long*,int ) ;
 int xen_remap_exchanged_ptes (unsigned long,unsigned int,unsigned long*,unsigned long) ;
 int xen_reservation_lock ;
 int xen_zap_pfn_range (unsigned long,unsigned int,int *,unsigned long*) ;

void xen_destroy_contiguous_region(phys_addr_t pstart, unsigned int order)
{
 unsigned long *out_frames = discontig_frames, in_frame;
 unsigned long flags;
 int success;
 unsigned long vstart;

 if (unlikely(order > MAX_CONTIG_ORDER))
  return;

 vstart = (unsigned long)phys_to_virt(pstart);
 memset((void *) vstart, 0, PAGE_SIZE << order);

 spin_lock_irqsave(&xen_reservation_lock, flags);


 in_frame = virt_to_mfn(vstart);


 xen_zap_pfn_range(vstart, order, ((void*)0), out_frames);


 success = xen_exchange_memory(1, order, &in_frame, 1UL << order,
     0, out_frames, 0);


 if (success)
  xen_remap_exchanged_ptes(vstart, order, out_frames, 0);
 else
  xen_remap_exchanged_ptes(vstart, order, ((void*)0), in_frame);

 spin_unlock_irqrestore(&xen_reservation_lock, flags);
}
