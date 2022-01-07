
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
typedef int pgd_t ;
struct TYPE_2__ {struct mm_struct* pt_mm; } ;


 TYPE_1__* virt_to_page (int *) ;

__attribute__((used)) static void pgd_set_mm(pgd_t *pgd, struct mm_struct *mm)
{
 virt_to_page(pgd)->pt_mm = mm;
}
