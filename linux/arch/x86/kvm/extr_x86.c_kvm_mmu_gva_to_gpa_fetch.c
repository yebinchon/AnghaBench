
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct x86_exception {int dummy; } ;
struct TYPE_5__ {TYPE_1__* walk_mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef int gva_t ;
typedef int gpa_t ;
struct TYPE_6__ {int (* get_cpl ) (struct kvm_vcpu*) ;} ;
struct TYPE_4__ {int (* gva_to_gpa ) (struct kvm_vcpu*,int ,int ,struct x86_exception*) ;} ;


 int PFERR_FETCH_MASK ;
 int PFERR_USER_MASK ;
 TYPE_3__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;
 int stub2 (struct kvm_vcpu*,int ,int ,struct x86_exception*) ;

gpa_t kvm_mmu_gva_to_gpa_fetch(struct kvm_vcpu *vcpu, gva_t gva,
    struct x86_exception *exception)
{
 u32 access = (kvm_x86_ops->get_cpl(vcpu) == 3) ? PFERR_USER_MASK : 0;
 access |= PFERR_FETCH_MASK;
 return vcpu->arch.walk_mmu->gva_to_gpa(vcpu, gva, access, exception);
}
