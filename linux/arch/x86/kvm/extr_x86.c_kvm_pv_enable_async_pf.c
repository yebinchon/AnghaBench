
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int msr_val; int send_user_only; int delivery_as_pf_vmexit; int data; } ;
struct TYPE_4__ {TYPE_1__ apf; } ;
struct kvm_vcpu {TYPE_2__ arch; int kvm; } ;
typedef int gpa_t ;


 int KVM_ASYNC_PF_DELIVERY_AS_PF_VMEXIT ;
 int KVM_ASYNC_PF_ENABLED ;
 int KVM_ASYNC_PF_SEND_ALWAYS ;
 int kvm_async_pf_hash_reset (struct kvm_vcpu*) ;
 int kvm_async_pf_wakeup_all (struct kvm_vcpu*) ;
 int kvm_clear_async_pf_completion_queue (struct kvm_vcpu*) ;
 scalar_t__ kvm_gfn_to_hva_cache_init (int ,int *,int,int) ;

__attribute__((used)) static int kvm_pv_enable_async_pf(struct kvm_vcpu *vcpu, u64 data)
{
 gpa_t gpa = data & ~0x3f;


 if (data & 0x38)
  return 1;

 vcpu->arch.apf.msr_val = data;

 if (!(data & KVM_ASYNC_PF_ENABLED)) {
  kvm_clear_async_pf_completion_queue(vcpu);
  kvm_async_pf_hash_reset(vcpu);
  return 0;
 }

 if (kvm_gfn_to_hva_cache_init(vcpu->kvm, &vcpu->arch.apf.data, gpa,
     sizeof(u32)))
  return 1;

 vcpu->arch.apf.send_user_only = !(data & KVM_ASYNC_PF_SEND_ALWAYS);
 vcpu->arch.apf.delivery_as_pf_vmexit = data & KVM_ASYNC_PF_DELIVERY_AS_PF_VMEXIT;
 kvm_async_pf_wakeup_all(vcpu);
 return 0;
}
