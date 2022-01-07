
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_4__ {int hmi_exceptions; } ;
struct TYPE_3__ {int (* hmi_exception_early ) (struct pt_regs*) ;} ;


 int __this_cpu_inc (int ) ;
 int hmi_handle_debugtrig (struct pt_regs*) ;
 TYPE_2__ irq_stat ;
 TYPE_1__ ppc_md ;
 int stub1 (struct pt_regs*) ;
 int wait_for_subcore_guest_exit () ;
 int wait_for_tb_resync () ;

long hmi_exception_realmode(struct pt_regs *regs)
{
 int ret;

 __this_cpu_inc(irq_stat.hmi_exceptions);

 ret = hmi_handle_debugtrig(regs);
 if (ret >= 0)
  return ret;

 wait_for_subcore_guest_exit();

 if (ppc_md.hmi_exception_early)
  ppc_md.hmi_exception_early(regs);

 wait_for_tb_resync();

 return 1;
}
