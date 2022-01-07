
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int pgd; } ;


 int __xen_pgd_pin (struct mm_struct*,int ) ;

__attribute__((used)) static void xen_pgd_pin(struct mm_struct *mm)
{
 __xen_pgd_pin(mm, mm->pgd);
}
