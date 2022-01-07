
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nmi_pending; int nmi_queued; scalar_t__ nmi_injected; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {scalar_t__ (* get_nmi_mask ) (struct kvm_vcpu*) ;} ;


 int KVM_REQ_EVENT ;
 scalar_t__ atomic_xchg (int *,int ) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 TYPE_2__* kvm_x86_ops ;
 int min (int ,unsigned int) ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static void process_nmi(struct kvm_vcpu *vcpu)
{
 unsigned limit = 2;






 if (kvm_x86_ops->get_nmi_mask(vcpu) || vcpu->arch.nmi_injected)
  limit = 1;

 vcpu->arch.nmi_pending += atomic_xchg(&vcpu->arch.nmi_queued, 0);
 vcpu->arch.nmi_pending = min(vcpu->arch.nmi_pending, limit);
 kvm_make_request(KVM_REQ_EVENT, vcpu);
}
