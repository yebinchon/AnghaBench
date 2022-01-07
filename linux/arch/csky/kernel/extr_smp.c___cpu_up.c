
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 scalar_t__ THREAD_SIZE ;
 int cpu_online (unsigned int) ;
 int cpumask_of (unsigned int) ;
 unsigned long mfcr (char*) ;
 int mtcr (char*,unsigned long) ;
 unsigned long secondary_ccr ;
 unsigned long secondary_hint ;
 scalar_t__ secondary_stack ;
 int send_arch_ipi (int ) ;
 scalar_t__ task_stack_page (struct task_struct*) ;

int __cpu_up(unsigned int cpu, struct task_struct *tidle)
{
 unsigned long mask = 1 << cpu;

 secondary_stack =
  (unsigned int) task_stack_page(tidle) + THREAD_SIZE - 8;
 secondary_hint = mfcr("cr31");
 secondary_ccr = mfcr("cr18");






 mtcr("cr17", 0x22);

 if (mask & mfcr("cr<29, 0>")) {
  send_arch_ipi(cpumask_of(cpu));
 } else {

  mask |= mfcr("cr<29, 0>");
  mtcr("cr<29, 0>", mask);
 }


 while (!cpu_online(cpu));

 secondary_stack = 0;

 return 0;
}
