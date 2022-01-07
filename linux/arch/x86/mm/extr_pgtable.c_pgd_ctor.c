
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 int CONFIG_PGTABLE_LEVELS ;
 int KERNEL_PGD_BOUNDARY ;
 int KERNEL_PGD_PTRS ;
 scalar_t__ SHARED_KERNEL_PMD ;
 int clone_pgd_range (int *,int,int ) ;
 int pgd_list_add (int *) ;
 int pgd_set_mm (int *,struct mm_struct*) ;
 int swapper_pg_dir ;

__attribute__((used)) static void pgd_ctor(struct mm_struct *mm, pgd_t *pgd)
{



 if (CONFIG_PGTABLE_LEVELS == 2 ||
     (CONFIG_PGTABLE_LEVELS == 3 && SHARED_KERNEL_PMD) ||
     CONFIG_PGTABLE_LEVELS >= 4) {
  clone_pgd_range(pgd + KERNEL_PGD_BOUNDARY,
    swapper_pg_dir + KERNEL_PGD_BOUNDARY,
    KERNEL_PGD_PTRS);
 }


 if (!SHARED_KERNEL_PMD) {
  pgd_set_mm(pgd, mm);
  pgd_list_add(pgd);
 }
}
