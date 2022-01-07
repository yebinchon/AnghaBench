
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* pages; } ;
struct TYPE_5__ {int entry_count; TYPE_1__ u; } ;
struct TYPE_6__ {TYPE_2__ ldt; } ;
struct mm_context {TYPE_3__ arch; } ;


 int LDT_DIRECT_ENTRIES ;
 int LDT_ENTRIES_PER_PAGE ;
 int free_page (long) ;

void free_ldt(struct mm_context *mm)
{
 int i;

 if (mm->arch.ldt.entry_count > LDT_DIRECT_ENTRIES) {
  i = mm->arch.ldt.entry_count / LDT_ENTRIES_PER_PAGE;
  while (i-- > 0)
   free_page((long) mm->arch.ldt.u.pages[i]);
 }
 mm->arch.ldt.entry_count = 0;
}
