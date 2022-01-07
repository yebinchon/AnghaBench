
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {struct kvm* kvm; } ;
struct TYPE_2__ {int kvmclock_update_work; } ;
struct kvm {TYPE_1__ arch; } ;


 int KVMCLOCK_UPDATE_DELAY ;
 int KVM_REQ_CLOCK_UPDATE ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void kvm_gen_kvmclock_update(struct kvm_vcpu *v)
{
 struct kvm *kvm = v->kvm;

 kvm_make_request(KVM_REQ_CLOCK_UPDATE, v);
 schedule_delayed_work(&kvm->arch.kvmclock_update_work,
     KVMCLOCK_UPDATE_DELAY);
}
