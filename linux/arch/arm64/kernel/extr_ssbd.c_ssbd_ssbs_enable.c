
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int pstate; } ;


 int PSR_AA32_SSBS_BIT ;
 int PSR_SSBS_BIT ;
 scalar_t__ is_compat_thread (int ) ;
 TYPE_1__* task_pt_regs (struct task_struct*) ;
 int task_thread_info (struct task_struct*) ;

__attribute__((used)) static void ssbd_ssbs_enable(struct task_struct *task)
{
 u64 val = is_compat_thread(task_thread_info(task)) ?
    PSR_AA32_SSBS_BIT : PSR_SSBS_BIT;

 task_pt_regs(task)->pstate |= val;
}
