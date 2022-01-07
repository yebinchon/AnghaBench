
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int hmi_exceptions; } ;
struct TYPE_7__ {TYPE_1__* kvm_vcore; } ;
struct TYPE_9__ {TYPE_2__ kvm_hstate; } ;
struct TYPE_8__ {int (* hmi_exception_early ) (int *) ;} ;
struct TYPE_6__ {scalar_t__ tb_offset_applied; } ;


 int __this_cpu_inc (int ) ;
 scalar_t__ hmi_handle_debugtrig (int *) ;
 TYPE_5__ irq_stat ;
 int kvmppc_subcore_exit_guest () ;
 int kvmppc_tb_resync_done () ;
 int kvmppc_tb_resync_required () ;
 TYPE_4__* local_paca ;
 int opal_resync_timebase () ;
 TYPE_3__ ppc_md ;
 int stub1 (int *) ;
 int wait_for_subcore_guest_exit () ;
 int wait_for_tb_resync () ;

long kvmppc_realmode_hmi_handler(void)
{
 bool resync_req;

 __this_cpu_inc(irq_stat.hmi_exceptions);

 if (hmi_handle_debugtrig(((void*)0)) >= 0)
  return 1;
 resync_req = kvmppc_tb_resync_required();


 kvmppc_subcore_exit_guest();







 wait_for_subcore_guest_exit();






 if (ppc_md.hmi_exception_early)
  ppc_md.hmi_exception_early(((void*)0));






 if (resync_req) {
  opal_resync_timebase();

  kvmppc_tb_resync_done();
 } else {
  wait_for_tb_resync();
 }





 if (local_paca->kvm_hstate.kvm_vcore)
  local_paca->kvm_hstate.kvm_vcore->tb_offset_applied = 0;

 return 0;
}
