
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int pgd; } ;


 unsigned long __pa_symbol (int ) ;
 struct mm_struct init_mm ;
 scalar_t__ virt_to_phys (int ) ;

__attribute__((used)) static inline unsigned long mm_to_pgd_phys(struct mm_struct *mm)
{

 if (mm == &init_mm)
  return __pa_symbol(mm->pgd);

 return (unsigned long)virt_to_phys(mm->pgd);
}
