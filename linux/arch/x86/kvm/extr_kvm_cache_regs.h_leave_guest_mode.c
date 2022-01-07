
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int load_eoi_exitmap_pending; int hflags; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int HF_GUEST_MASK ;
 int KVM_REQ_LOAD_EOI_EXITMAP ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;

__attribute__((used)) static inline void leave_guest_mode(struct kvm_vcpu *vcpu)
{
 vcpu->arch.hflags &= ~HF_GUEST_MASK;

 if (vcpu->arch.load_eoi_exitmap_pending) {
  vcpu->arch.load_eoi_exitmap_pending = 0;
  kvm_make_request(KVM_REQ_LOAD_EOI_EXITMAP, vcpu);
 }
}
