
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {int is_lazy; int loaded_mm; } ;


 TYPE_1__ cpu_tlbstate ;
 int init_mm ;
 int * this_cpu_read (int ) ;
 int this_cpu_write (int ,int) ;

void enter_lazy_tlb(struct mm_struct *mm, struct task_struct *tsk)
{
 if (this_cpu_read(cpu_tlbstate.loaded_mm) == &init_mm)
  return;

 this_cpu_write(cpu_tlbstate.is_lazy, 1);
}
