
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; int vcpu_id; } ;
struct TYPE_3__ {int prefix; } ;


 int GUEST_PREFIX_SHIFT ;
 int KVM_REQ_MMU_RELOAD ;
 int KVM_REQ_TLB_FLUSH ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,int ,int) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;

__attribute__((used)) static inline void kvm_s390_set_prefix(struct kvm_vcpu *vcpu, u32 prefix)
{
 VCPU_EVENT(vcpu, 3, "set prefix of cpu %03u to 0x%x", vcpu->vcpu_id,
     prefix);
 vcpu->arch.sie_block->prefix = prefix >> GUEST_PREFIX_SHIFT;
 kvm_make_request(KVM_REQ_TLB_FLUSH, vcpu);
 kvm_make_request(KVM_REQ_MMU_RELOAD, vcpu);
}
