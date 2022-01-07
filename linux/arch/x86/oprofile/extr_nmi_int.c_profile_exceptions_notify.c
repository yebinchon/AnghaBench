
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int (* stop ) (int ) ;int (* check_ctrs ) (struct pt_regs*,int ) ;} ;


 int NMI_DONE ;
 int NMI_HANDLED ;
 int cpu_msrs ;
 scalar_t__ ctr_running ;
 TYPE_1__* model ;
 int nmi_enabled ;
 int stub1 (struct pt_regs*,int ) ;
 int stub2 (int ) ;
 int this_cpu_ptr (int *) ;

__attribute__((used)) static int profile_exceptions_notify(unsigned int val, struct pt_regs *regs)
{
 if (ctr_running)
  model->check_ctrs(regs, this_cpu_ptr(&cpu_msrs));
 else if (!nmi_enabled)
  return NMI_DONE;
 else
  model->stop(this_cpu_ptr(&cpu_msrs));
 return NMI_HANDLED;
}
