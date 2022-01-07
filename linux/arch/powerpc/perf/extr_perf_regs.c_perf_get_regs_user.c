
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct perf_regs {scalar_t__ regs; int abi; } ;


 int PERF_SAMPLE_REGS_ABI_NONE ;
 int current ;
 int perf_reg_abi (int ) ;
 scalar_t__ task_pt_regs (int ) ;

void perf_get_regs_user(struct perf_regs *regs_user,
   struct pt_regs *regs,
   struct pt_regs *regs_user_copy)
{
 regs_user->regs = task_pt_regs(current);
 regs_user->abi = (regs_user->regs) ? perf_reg_abi(current) :
    PERF_SAMPLE_REGS_ABI_NONE;
}
