
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mm_users; } ;


 scalar_t__ atomic_read (int *) ;
 TYPE_2__* current ;
 int flush_tlb_mm (TYPE_1__*) ;

void flush_tlb_all(void)
{




 if (atomic_read(&current->mm->mm_users) == 0)
  return;

 flush_tlb_mm(current->mm);
}
