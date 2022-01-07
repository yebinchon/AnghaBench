
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_fpu (int ) ;
 int clear_used_math () ;
 int * current ;
 int * last_task_used_math ;
 int task_pt_regs (int *) ;

void flush_thread(void)
{
}
