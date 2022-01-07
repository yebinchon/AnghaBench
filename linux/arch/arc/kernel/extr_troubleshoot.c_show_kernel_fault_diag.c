
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_4__ {unsigned long fault_address; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;


 TYPE_2__* current ;
 int pr_info (char*,char const*) ;
 int show_regs (struct pt_regs*) ;
 int show_stacktrace (TYPE_2__*,struct pt_regs*) ;
 int user_mode (struct pt_regs*) ;

void show_kernel_fault_diag(const char *str, struct pt_regs *regs,
       unsigned long address)
{
 current->thread.fault_address = address;


 pr_info("\n%s\n", str);


 show_regs(regs);


 if (!user_mode(regs))
  show_stacktrace(current, regs);
}
