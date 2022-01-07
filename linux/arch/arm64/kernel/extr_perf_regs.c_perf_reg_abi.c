
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct task_struct {int dummy; } ;


 int PERF_SAMPLE_REGS_ABI_32 ;
 int PERF_SAMPLE_REGS_ABI_64 ;
 scalar_t__ is_compat_thread (int ) ;
 int task_thread_info (struct task_struct*) ;

u64 perf_reg_abi(struct task_struct *task)
{
 if (is_compat_thread(task_thread_info(task)))
  return PERF_SAMPLE_REGS_ABI_32;
 else
  return PERF_SAMPLE_REGS_ABI_64;
}
