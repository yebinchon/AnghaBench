
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct task_struct {int dummy; } ;


 int PERF_SAMPLE_REGS_ABI_32 ;
 int PERF_SAMPLE_REGS_ABI_64 ;
 int TIF_32BIT ;
 int test_tsk_thread_flag (struct task_struct*,int ) ;

u64 perf_reg_abi(struct task_struct *task)
{





 return PERF_SAMPLE_REGS_ABI_32;
}
