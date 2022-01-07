
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct x86_exception {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef int gpa_t ;
struct TYPE_3__ {int (* gva_to_gpa ) (struct kvm_vcpu*,int ,int ,struct x86_exception*) ;} ;


 int BUG_ON (int) ;
 int PFERR_USER_MASK ;
 int mmu_is_nested (struct kvm_vcpu*) ;
 int stub1 (struct kvm_vcpu*,int ,int ,struct x86_exception*) ;

gpa_t translate_nested_gpa(struct kvm_vcpu *vcpu, gpa_t gpa, u32 access,
      struct x86_exception *exception)
{
 gpa_t t_gpa;

 BUG_ON(!mmu_is_nested(vcpu));


 access |= PFERR_USER_MASK;
 t_gpa = vcpu->arch.mmu->gva_to_gpa(vcpu, gpa, access, exception);

 return t_gpa;
}
