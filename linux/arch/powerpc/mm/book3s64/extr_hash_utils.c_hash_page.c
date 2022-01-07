
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned long DSISR_NOHPTE ;
 unsigned long HPTE_NOHPTE_UPDATE ;
 scalar_t__ IO_REGION_ID ;
 scalar_t__ VMALLOC_REGION_ID ;
 TYPE_1__* current ;
 scalar_t__ get_region_id (unsigned long) ;
 int hash_page_mm (struct mm_struct*,unsigned long,unsigned long,unsigned long,unsigned long) ;
 struct mm_struct init_mm ;

int hash_page(unsigned long ea, unsigned long access, unsigned long trap,
       unsigned long dsisr)
{
 unsigned long flags = 0;
 struct mm_struct *mm = current->mm;

 if ((get_region_id(ea) == VMALLOC_REGION_ID) ||
     (get_region_id(ea) == IO_REGION_ID))
  mm = &init_mm;

 if (dsisr & DSISR_NOHPTE)
  flags |= HPTE_NOHPTE_UPDATE;

 return hash_page_mm(mm, ea, access, trap, flags);
}
