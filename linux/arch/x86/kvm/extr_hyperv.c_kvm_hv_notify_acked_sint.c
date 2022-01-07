
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct kvm_vcpu_hv_synic {int * sint_to_gsi; } ;
struct TYPE_2__ {size_t sintx; int direct_mode; scalar_t__ enable; } ;
struct kvm_vcpu_hv_stimer {TYPE_1__ config; scalar_t__ msg_pending; } ;
struct kvm_vcpu_hv {struct kvm_vcpu_hv_stimer* stimer; } ;
struct kvm_vcpu {int vcpu_id; struct kvm* kvm; } ;
struct kvm {int irq_srcu; } ;


 int ARRAY_SIZE (struct kvm_vcpu_hv_stimer*) ;
 int atomic_read (int *) ;
 int kvm_notify_acked_gsi (struct kvm*,int) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int stimer_mark_pending (struct kvm_vcpu_hv_stimer*,int) ;
 int trace_kvm_hv_notify_acked_sint (int ,size_t) ;
 struct kvm_vcpu_hv* vcpu_to_hv_vcpu (struct kvm_vcpu*) ;
 struct kvm_vcpu_hv_synic* vcpu_to_synic (struct kvm_vcpu*) ;

__attribute__((used)) static void kvm_hv_notify_acked_sint(struct kvm_vcpu *vcpu, u32 sint)
{
 struct kvm *kvm = vcpu->kvm;
 struct kvm_vcpu_hv_synic *synic = vcpu_to_synic(vcpu);
 struct kvm_vcpu_hv *hv_vcpu = vcpu_to_hv_vcpu(vcpu);
 struct kvm_vcpu_hv_stimer *stimer;
 int gsi, idx;

 trace_kvm_hv_notify_acked_sint(vcpu->vcpu_id, sint);


 for (idx = 0; idx < ARRAY_SIZE(hv_vcpu->stimer); idx++) {
  stimer = &hv_vcpu->stimer[idx];
  if (stimer->msg_pending && stimer->config.enable &&
      !stimer->config.direct_mode &&
      stimer->config.sintx == sint)
   stimer_mark_pending(stimer, 0);
 }

 idx = srcu_read_lock(&kvm->irq_srcu);
 gsi = atomic_read(&synic->sint_to_gsi[sint]);
 if (gsi != -1)
  kvm_notify_acked_gsi(kvm, gsi);
 srcu_read_unlock(&kvm->irq_srcu, idx);
}
