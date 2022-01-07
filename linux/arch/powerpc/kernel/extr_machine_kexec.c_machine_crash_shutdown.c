
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int default_machine_crash_shutdown (struct pt_regs*) ;

void machine_crash_shutdown(struct pt_regs *regs)
{
 default_machine_crash_shutdown(regs);
}
