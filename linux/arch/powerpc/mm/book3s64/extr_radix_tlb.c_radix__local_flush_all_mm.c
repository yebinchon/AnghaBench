
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long id; } ;
struct mm_struct {TYPE_1__ context; } ;


 unsigned long MMU_NO_CONTEXT ;
 int RIC_FLUSH_ALL ;
 int _tlbiel_pid (unsigned long,int ) ;
 int preempt_disable () ;
 int preempt_enable () ;

void radix__local_flush_all_mm(struct mm_struct *mm)
{
 unsigned long pid;

 preempt_disable();
 pid = mm->context.id;
 if (pid != MMU_NO_CONTEXT)
  _tlbiel_pid(pid, RIC_FLUSH_ALL);
 preempt_enable();
}
