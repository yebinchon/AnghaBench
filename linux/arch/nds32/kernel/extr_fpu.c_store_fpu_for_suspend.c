
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_fpu (int ) ;
 int current ;
 int * last_task_used_math ;
 int save_fpu (int *) ;
 int task_pt_regs (int ) ;
 int unlazy_fpu (int ) ;
 int used_math () ;

void store_fpu_for_suspend(void)
{





 if (!used_math())
  return;
 unlazy_fpu(current);

 clear_fpu(task_pt_regs(current));
}
