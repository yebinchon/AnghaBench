
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_2__ {int is_lazy; int loaded_mm; } ;


 int WARN_ON (int) ;
 TYPE_1__ cpu_tlbstate ;
 struct mm_struct init_mm ;
 int switch_mm (int *,struct mm_struct*,int *) ;
 struct mm_struct* this_cpu_read (int ) ;

void leave_mm(int cpu)
{
 struct mm_struct *loaded_mm = this_cpu_read(cpu_tlbstate.loaded_mm);
 if (loaded_mm == &init_mm)
  return;


 WARN_ON(!this_cpu_read(cpu_tlbstate.is_lazy));

 switch_mm(((void*)0), &init_mm, ((void*)0));
}
