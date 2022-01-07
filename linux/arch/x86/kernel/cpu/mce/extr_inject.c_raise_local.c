
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {int inject_flags; int extcpu; scalar_t__ finished; scalar_t__ status; } ;


 int EINVAL ;
 int MCJ_CTX (int) ;


 int MCJ_EXCEPTION ;
 int injectm ;
 int mce_notify_irq () ;
 int pr_info (char*,...) ;
 int raise_exception (struct mce*,int *) ;
 int raise_poll (struct mce*) ;
 struct mce* this_cpu_ptr (int *) ;

__attribute__((used)) static int raise_local(void)
{
 struct mce *m = this_cpu_ptr(&injectm);
 int context = MCJ_CTX(m->inject_flags);
 int ret = 0;
 int cpu = m->extcpu;

 if (m->inject_flags & MCJ_EXCEPTION) {
  pr_info("Triggering MCE exception on CPU %d\n", cpu);
  switch (context) {
  case 129:






  case 128:
   raise_exception(m, ((void*)0));
   break;
  default:
   pr_info("Invalid MCE context\n");
   ret = -EINVAL;
  }
  pr_info("MCE exception done on CPU %d\n", cpu);
 } else if (m->status) {
  pr_info("Starting machine check poll CPU %d\n", cpu);
  raise_poll(m);
  mce_notify_irq();
  pr_info("Machine check poll done on CPU %d\n", cpu);
 } else
  m->finished = 0;

 return ret;
}
