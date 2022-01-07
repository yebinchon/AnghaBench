
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kvm_vcpu {TYPE_4__* run; } ;
struct TYPE_5__ {int result; } ;
struct TYPE_6__ {TYPE_1__ hcall; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ hyperv; } ;


 int kvm_hv_hypercall_complete (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int kvm_hv_hypercall_complete_userspace(struct kvm_vcpu *vcpu)
{
 return kvm_hv_hypercall_complete(vcpu, vcpu->run->hyperv.u.hcall.result);
}
