
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pud_t ;
typedef int pmd_t ;
typedef int pgd_t ;
struct TYPE_7__ {scalar_t__ vmalloc_seq; } ;
struct TYPE_11__ {TYPE_1__ context; } ;
struct TYPE_10__ {TYPE_6__* active_mm; } ;
struct TYPE_8__ {scalar_t__ vmalloc_seq; } ;
struct TYPE_9__ {TYPE_2__ context; } ;


 scalar_t__ PMD_SIZE ;
 int PMD_TYPE_MASK ;
 int PMD_TYPE_TABLE ;
 int SZ_1M ;
 int __check_vmalloc_seq (TYPE_6__*) ;
 TYPE_5__* current ;
 int flush_cache_vunmap (unsigned long,unsigned long) ;
 int flush_tlb_kernel_range (unsigned long,unsigned long) ;
 TYPE_3__ init_mm ;
 int * pgd_offset_k (unsigned long) ;
 int pmd_clear (int *) ;
 int pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_page_vaddr (int ) ;
 int pmd_val (int ) ;
 int pte_free_kernel (TYPE_3__*,int ) ;
 int * pud_offset (int *,unsigned long) ;

__attribute__((used)) static void unmap_area_sections(unsigned long virt, unsigned long size)
{
 unsigned long addr = virt, end = virt + (size & ~(SZ_1M - 1));
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmdp;

 flush_cache_vunmap(addr, end);
 pgd = pgd_offset_k(addr);
 pud = pud_offset(pgd, addr);
 pmdp = pmd_offset(pud, addr);
 do {
  pmd_t pmd = *pmdp;

  if (!pmd_none(pmd)) {







   pmd_clear(pmdp);
   init_mm.context.vmalloc_seq++;




   if ((pmd_val(pmd) & PMD_TYPE_MASK) == PMD_TYPE_TABLE)
    pte_free_kernel(&init_mm, pmd_page_vaddr(pmd));
  }

  addr += PMD_SIZE;
  pmdp += 2;
 } while (addr < end);





 if (current->active_mm->context.vmalloc_seq != init_mm.context.vmalloc_seq)
  __check_vmalloc_seq(current->active_mm);

 flush_tlb_kernel_range(virt, end);
}
