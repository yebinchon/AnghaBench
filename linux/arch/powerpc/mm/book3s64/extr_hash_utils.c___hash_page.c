
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned long DSISR_ISSTORE ;
 unsigned long DSISR_NOHPTE ;
 unsigned long HPTE_NOHPTE_UPDATE ;
 unsigned int IO_REGION_ID ;
 unsigned long MSR_PR ;
 unsigned int USER_REGION_ID ;
 unsigned int VMALLOC_REGION_ID ;
 unsigned long _PAGE_EXEC ;
 unsigned long _PAGE_PRESENT ;
 unsigned long _PAGE_PRIVILEGED ;
 unsigned long _PAGE_READ ;
 unsigned long _PAGE_WRITE ;
 TYPE_1__* current ;
 unsigned int get_region_id (unsigned long) ;
 int hash_page_mm (struct mm_struct*,unsigned long,unsigned long,unsigned long,unsigned long) ;
 struct mm_struct init_mm ;

int __hash_page(unsigned long trap, unsigned long ea, unsigned long dsisr,
  unsigned long msr)
{
 unsigned long access = _PAGE_PRESENT | _PAGE_READ;
 unsigned long flags = 0;
 struct mm_struct *mm = current->mm;
 unsigned int region_id = get_region_id(ea);

 if ((region_id == VMALLOC_REGION_ID) || (region_id == IO_REGION_ID))
  mm = &init_mm;

 if (dsisr & DSISR_NOHPTE)
  flags |= HPTE_NOHPTE_UPDATE;

 if (dsisr & DSISR_ISSTORE)
  access |= _PAGE_WRITE;
 access |= _PAGE_PRIVILEGED;
 if ((msr & MSR_PR) || (region_id == USER_REGION_ID))
  access &= ~_PAGE_PRIVILEGED;

 if (trap == 0x400)
  access |= _PAGE_EXEC;

 return hash_page_mm(mm, ea, access, trap, flags);
}
