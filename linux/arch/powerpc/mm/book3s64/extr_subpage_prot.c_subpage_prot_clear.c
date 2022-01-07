
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct subpage_prot_table {unsigned long maxaddr; int *** protptrs; int ** low_prot; } ;
struct mm_struct {int mmap_sem; int context; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned long PAGE_SHIFT ;
 int PTRS_PER_PTE ;
 int SBP_L1_COUNT ;
 int SBP_L2_COUNT ;
 unsigned long SBP_L2_SHIFT ;
 unsigned long SBP_L3_SHIFT ;
 TYPE_1__* current ;
 int down_write (int *) ;
 int hpte_flush_range (struct mm_struct*,unsigned long,size_t) ;
 int memset (int *,int ,size_t) ;
 struct subpage_prot_table* mm_ctx_subpage_prot (int *) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 int up_write (int *) ;

__attribute__((used)) static void subpage_prot_clear(unsigned long addr, unsigned long len)
{
 struct mm_struct *mm = current->mm;
 struct subpage_prot_table *spt;
 u32 **spm, *spp;
 unsigned long i;
 size_t nw;
 unsigned long next, limit;

 down_write(&mm->mmap_sem);

 spt = mm_ctx_subpage_prot(&mm->context);
 if (!spt)
  goto err_out;

 limit = addr + len;
 if (limit > spt->maxaddr)
  limit = spt->maxaddr;
 for (; addr < limit; addr = next) {
  next = pmd_addr_end(addr, limit);
  if (addr < 0x100000000UL) {
   spm = spt->low_prot;
  } else {
   spm = spt->protptrs[addr >> SBP_L3_SHIFT];
   if (!spm)
    continue;
  }
  spp = spm[(addr >> SBP_L2_SHIFT) & (SBP_L2_COUNT - 1)];
  if (!spp)
   continue;
  spp += (addr >> PAGE_SHIFT) & (SBP_L1_COUNT - 1);

  i = (addr >> PAGE_SHIFT) & (PTRS_PER_PTE - 1);
  nw = PTRS_PER_PTE - i;
  if (addr + (nw << PAGE_SHIFT) > next)
   nw = (next - addr) >> PAGE_SHIFT;

  memset(spp, 0, nw * sizeof(u32));


  hpte_flush_range(mm, addr, nw);
 }

err_out:
 up_write(&mm->mmap_sem);
}
