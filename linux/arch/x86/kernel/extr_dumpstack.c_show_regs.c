
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int KERN_DEFAULT ;
 int SHOW_REGS_ALL ;
 int SHOW_REGS_USER ;
 int __show_regs (struct pt_regs*,int ) ;
 int current ;
 int show_regs_print_info (int ) ;
 int show_trace_log_lvl (int ,struct pt_regs*,int *,int ) ;
 scalar_t__ user_mode (struct pt_regs*) ;

void show_regs(struct pt_regs *regs)
{
 show_regs_print_info(KERN_DEFAULT);

 __show_regs(regs, user_mode(regs) ? SHOW_REGS_USER : SHOW_REGS_ALL);




 if (!user_mode(regs))
  show_trace_log_lvl(current, regs, ((void*)0), KERN_DEFAULT);
}
