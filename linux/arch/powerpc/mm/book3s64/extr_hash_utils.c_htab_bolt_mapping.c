
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* hpte_insert ) (unsigned long,unsigned long,unsigned long,unsigned long,int ,int,int,int) ;} ;
struct TYPE_3__ {unsigned int shift; } ;


 int BUG_ON (int) ;
 int DBG (char*,unsigned long,unsigned long,unsigned long,unsigned long,int,int) ;
 unsigned long HPTES_PER_GROUP ;
 unsigned long HPTE_R_N ;
 int HPTE_V_BOLTED ;
 scalar_t__ MEMORY_START ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ PHYSICAL_START ;
 scalar_t__ debug_pagealloc_enabled () ;
 unsigned long get_kernel_vsid (unsigned long,int) ;
 unsigned long hpt_hash (unsigned long,unsigned int,int) ;
 unsigned long hpt_vpn (unsigned long,unsigned long,int) ;
 unsigned long htab_convert_pte_flags (unsigned long) ;
 unsigned long htab_hash_mask ;
 unsigned long linear_map_hash_count ;
 int* linear_map_hash_slots ;
 TYPE_2__ mmu_hash_ops ;
 TYPE_1__* mmu_psize_defs ;
 scalar_t__ overlaps_interrupt_vector_text (unsigned long,unsigned long) ;
 scalar_t__ overlaps_kernel_text (unsigned long,unsigned long) ;
 int stub1 (unsigned long,unsigned long,unsigned long,unsigned long,int ,int,int,int) ;

int htab_bolt_mapping(unsigned long vstart, unsigned long vend,
        unsigned long pstart, unsigned long prot,
        int psize, int ssize)
{
 unsigned long vaddr, paddr;
 unsigned int step, shift;
 int ret = 0;

 shift = mmu_psize_defs[psize].shift;
 step = 1 << shift;

 prot = htab_convert_pte_flags(prot);

 DBG("htab_bolt_mapping(%lx..%lx -> %lx (%lx,%d,%d)\n",
     vstart, vend, pstart, prot, psize, ssize);

 for (vaddr = vstart, paddr = pstart; vaddr < vend;
      vaddr += step, paddr += step) {
  unsigned long hash, hpteg;
  unsigned long vsid = get_kernel_vsid(vaddr, ssize);
  unsigned long vpn = hpt_vpn(vaddr, vsid, ssize);
  unsigned long tprot = prot;




  if (!vsid)
   return -1;

  if (overlaps_kernel_text(vaddr, vaddr + step))
   tprot &= ~HPTE_R_N;
  if ((PHYSICAL_START > MEMORY_START) &&
   overlaps_interrupt_vector_text(vaddr, vaddr + step))
    tprot &= ~HPTE_R_N;

  hash = hpt_hash(vpn, shift, ssize);
  hpteg = ((hash & htab_hash_mask) * HPTES_PER_GROUP);

  BUG_ON(!mmu_hash_ops.hpte_insert);
  ret = mmu_hash_ops.hpte_insert(hpteg, vpn, paddr, tprot,
            HPTE_V_BOLTED, psize, psize,
            ssize);

  if (ret < 0)
   break;






 }
 return ret < 0 ? ret : 0;
}
