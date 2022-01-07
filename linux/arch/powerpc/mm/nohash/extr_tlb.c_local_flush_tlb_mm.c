
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int id; } ;
struct mm_struct {TYPE_1__ context; } ;


 unsigned int MMU_NO_CONTEXT ;
 int _tlbil_pid (unsigned int) ;
 int preempt_disable () ;
 int preempt_enable () ;

void local_flush_tlb_mm(struct mm_struct *mm)
{
 unsigned int pid;

 preempt_disable();
 pid = mm->context.id;
 if (pid != MMU_NO_CONTEXT)
  _tlbil_pid(pid);
 preempt_enable();
}
