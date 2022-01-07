
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int free_ldt_pgtables (struct mm_struct*) ;

void ldt_arch_exit_mmap(struct mm_struct *mm)
{
 free_ldt_pgtables(mm);
}
