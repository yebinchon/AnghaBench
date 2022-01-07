
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int direct_mode; scalar_t__ enable; int periodic; } ;
struct kvm_vcpu_hv_stimer {int msg_pending; TYPE_1__ config; int index; } ;
struct TYPE_4__ {int vcpu_id; } ;


 int stimer_notify_direct (struct kvm_vcpu_hv_stimer*) ;
 int stimer_send_msg (struct kvm_vcpu_hv_stimer*) ;
 TYPE_2__* stimer_to_vcpu (struct kvm_vcpu_hv_stimer*) ;
 int trace_kvm_hv_stimer_expiration (int ,int ,int,int) ;

__attribute__((used)) static void stimer_expiration(struct kvm_vcpu_hv_stimer *stimer)
{
 int r, direct = stimer->config.direct_mode;

 stimer->msg_pending = 1;
 if (!direct)
  r = stimer_send_msg(stimer);
 else
  r = stimer_notify_direct(stimer);
 trace_kvm_hv_stimer_expiration(stimer_to_vcpu(stimer)->vcpu_id,
           stimer->index, direct, r);
 if (!r) {
  stimer->msg_pending = 0;
  if (!(stimer->config.periodic))
   stimer->config.enable = 0;
 }
}
