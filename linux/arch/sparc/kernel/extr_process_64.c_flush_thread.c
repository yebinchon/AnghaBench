
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {scalar_t__* fpsaved; TYPE_1__* task; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 struct thread_info* current_thread_info () ;
 int set_thread_wsaved (int ) ;
 int tsb_context_switch (struct mm_struct*) ;

void flush_thread(void)
{
 struct thread_info *t = current_thread_info();
 struct mm_struct *mm;

 mm = t->task->mm;
 if (mm)
  tsb_context_switch(mm);

 set_thread_wsaved(0);


 t->fpsaved[0] = 0;
}
