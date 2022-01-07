
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union kvmppc_icp_state {int out_ee; scalar_t__ pending_pri; scalar_t__ cppr; scalar_t__ raw; int need_resend; scalar_t__ xisr; int mfrr; } ;
struct TYPE_2__ {int raw; } ;
struct kvmppc_icp {int vcpu; int server_num; TYPE_1__ state; } ;


 int BOOK3S_INTERRUPT_EXTERNAL ;
 int XICS_DBG (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int,...) ;
 scalar_t__ cmpxchg64 (int *,scalar_t__,scalar_t__) ;
 int kvmppc_book3s_queue_irqprio (int ,int ) ;
 int kvmppc_fast_vcpu_kick (int ) ;

__attribute__((used)) static inline bool icp_try_update(struct kvmppc_icp *icp,
      union kvmppc_icp_state old,
      union kvmppc_icp_state new,
      bool change_self)
{
 bool success;


 new.out_ee = (new.xisr && (new.pending_pri < new.cppr));


 success = cmpxchg64(&icp->state.raw, old.raw, new.raw) == old.raw;
 if (!success)
  goto bail;

 XICS_DBG("UPD [%04lx] - C:%02x M:%02x PP: %02x PI:%06x R:%d O:%d\n",
   icp->server_num,
   old.cppr, old.mfrr, old.pending_pri, old.xisr,
   old.need_resend, old.out_ee);
 XICS_DBG("UPD        - C:%02x M:%02x PP: %02x PI:%06x R:%d O:%d\n",
   new.cppr, new.mfrr, new.pending_pri, new.xisr,
   new.need_resend, new.out_ee);
 if (new.out_ee) {
  kvmppc_book3s_queue_irqprio(icp->vcpu,
         BOOK3S_INTERRUPT_EXTERNAL);
  if (!change_self)
   kvmppc_fast_vcpu_kick(icp->vcpu);
 }
 bail:
 return success;
}
