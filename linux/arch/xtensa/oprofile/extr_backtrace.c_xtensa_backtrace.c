
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 scalar_t__ user_mode (struct pt_regs* const) ;
 int xtensa_backtrace_cb ;
 int xtensa_backtrace_kernel (struct pt_regs* const,unsigned int,int ,int ,int *) ;
 int xtensa_backtrace_user (struct pt_regs* const,unsigned int,int ,int *) ;

void xtensa_backtrace(struct pt_regs * const regs, unsigned int depth)
{
 if (user_mode(regs))
  xtensa_backtrace_user(regs, depth, xtensa_backtrace_cb, ((void*)0));
 else
  xtensa_backtrace_kernel(regs, depth, xtensa_backtrace_cb,
     xtensa_backtrace_cb, ((void*)0));
}
