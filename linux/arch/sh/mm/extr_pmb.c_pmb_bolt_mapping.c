
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pmb_entry {unsigned long size; int lock; struct pmb_entry* link; } ;
typedef unsigned long phys_addr_t ;
typedef int pgprot_t ;
struct TYPE_3__ {unsigned long size; unsigned long flag; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EFAULT ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct pmb_entry*) ;
 int PMB_NO_ENTRY ;
 int PTR_ERR (struct pmb_entry*) ;
 int SINGLE_DEPTH_NESTING ;
 unsigned long SZ_16M ;
 int __set_pmb_entry (struct pmb_entry*) ;
 int flush_cache_vmap (unsigned long,unsigned long) ;
 int flush_tlb_kernel_range (unsigned long,unsigned long) ;
 scalar_t__ likely (struct pmb_entry*) ;
 unsigned long pgprot_to_pmb_flags (int ) ;
 int pmb_addr_valid (unsigned long,unsigned long) ;
 struct pmb_entry* pmb_alloc (unsigned long,unsigned long,unsigned long,int ) ;
 scalar_t__ pmb_mapping_exists (unsigned long,unsigned long,unsigned long) ;
 TYPE_1__* pmb_sizes ;
 int pmb_unmap_entry (struct pmb_entry*,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_lock_nested (int *,int ) ;
 int raw_spin_unlock (int *) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

int pmb_bolt_mapping(unsigned long vaddr, phys_addr_t phys,
       unsigned long size, pgprot_t prot)
{
 struct pmb_entry *pmbp, *pmbe;
 unsigned long orig_addr, orig_size;
 unsigned long flags, pmb_flags;
 int i, mapped;

 if (size < SZ_16M)
  return -EINVAL;
 if (!pmb_addr_valid(vaddr, size))
  return -EFAULT;
 if (pmb_mapping_exists(vaddr, phys, size))
  return 0;

 orig_addr = vaddr;
 orig_size = size;

 flush_tlb_kernel_range(vaddr, vaddr + size);

 pmb_flags = pgprot_to_pmb_flags(prot);
 pmbp = ((void*)0);

 do {
  for (i = mapped = 0; i < ARRAY_SIZE(pmb_sizes); i++) {
   if (size < pmb_sizes[i].size)
    continue;

   pmbe = pmb_alloc(vaddr, phys, pmb_flags |
      pmb_sizes[i].flag, PMB_NO_ENTRY);
   if (IS_ERR(pmbe)) {
    pmb_unmap_entry(pmbp, mapped);
    return PTR_ERR(pmbe);
   }

   raw_spin_lock_irqsave(&pmbe->lock, flags);

   pmbe->size = pmb_sizes[i].size;

   __set_pmb_entry(pmbe);

   phys += pmbe->size;
   vaddr += pmbe->size;
   size -= pmbe->size;





   if (likely(pmbp)) {
    raw_spin_lock_nested(&pmbp->lock,
           SINGLE_DEPTH_NESTING);
    pmbp->link = pmbe;
    raw_spin_unlock(&pmbp->lock);
   }

   pmbp = pmbe;






   i--;
   mapped++;

   raw_spin_unlock_irqrestore(&pmbe->lock, flags);
  }
 } while (size >= SZ_16M);

 flush_cache_vmap(orig_addr, orig_addr + orig_size);

 return 0;
}
