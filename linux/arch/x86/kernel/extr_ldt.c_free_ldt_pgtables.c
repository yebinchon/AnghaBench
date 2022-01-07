
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int dummy; } ;
struct mm_struct {int dummy; } ;


 unsigned long LDT_BASE_ADDR ;
 unsigned long LDT_END_ADDR ;
 int X86_FEATURE_PTI ;
 int boot_cpu_has (int ) ;
 int free_pgd_range (struct mmu_gather*,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int tlb_finish_mmu (struct mmu_gather*,unsigned long,unsigned long) ;
 int tlb_gather_mmu (struct mmu_gather*,struct mm_struct*,unsigned long,unsigned long) ;

__attribute__((used)) static void free_ldt_pgtables(struct mm_struct *mm)
{
}
