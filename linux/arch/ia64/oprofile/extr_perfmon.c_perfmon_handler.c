
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;
struct TYPE_5__ {int reset_ovfl_pmds; } ;
struct TYPE_6__ {TYPE_1__ bits; } ;
struct TYPE_7__ {int pmd_eventid; TYPE_2__ ovfl_ctrl; } ;
typedef TYPE_3__ pfm_ovfl_arg_t ;


 scalar_t__ allow_ints ;
 int oprofile_add_sample (struct pt_regs*,int) ;

__attribute__((used)) static int
perfmon_handler(struct task_struct *task, void *buf, pfm_ovfl_arg_t *arg,
                struct pt_regs *regs, unsigned long stamp)
{
 int event = arg->pmd_eventid;

 arg->ovfl_ctrl.bits.reset_ovfl_pmds = 1;




 if (allow_ints)
  oprofile_add_sample(regs, event);
 return 0;
}
