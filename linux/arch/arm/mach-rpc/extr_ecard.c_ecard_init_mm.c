
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* active_mm; struct mm_struct* mm; } ;


 int ENOMEM ;
 int activate_mm (struct mm_struct*,struct mm_struct*) ;
 TYPE_1__* current ;
 int ecard_init_pgtables (struct mm_struct*) ;
 struct mm_struct* mm_alloc () ;
 int mmdrop (struct mm_struct*) ;

__attribute__((used)) static int ecard_init_mm(void)
{
 struct mm_struct * mm = mm_alloc();
 struct mm_struct *active_mm = current->active_mm;

 if (!mm)
  return -ENOMEM;

 current->mm = mm;
 current->active_mm = mm;
 activate_mm(active_mm, mm);
 mmdrop(active_mm);
 ecard_init_pgtables(mm);
 return 0;
}
