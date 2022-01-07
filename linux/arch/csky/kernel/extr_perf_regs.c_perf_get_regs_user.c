
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct perf_regs {int abi; int regs; } ;


 int current ;
 int perf_reg_abi (int ) ;
 int task_pt_regs (int ) ;

void perf_get_regs_user(struct perf_regs *regs_user,
   struct pt_regs *regs,
   struct pt_regs *regs_user_copy)
{
 regs_user->regs = task_pt_regs(current);
 regs_user->abi = perf_reg_abi(current);
}
