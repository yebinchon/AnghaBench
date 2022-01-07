
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct x86_exception {scalar_t__ error_code; } ;
struct TYPE_3__ {int (* translate_gpa ) (struct kvm_vcpu*,int ,int ,struct x86_exception*) ;} ;
struct TYPE_4__ {TYPE_1__ nested_mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef int gva_t ;
typedef int gpa_t ;


 int stub1 (struct kvm_vcpu*,int ,int ,struct x86_exception*) ;

__attribute__((used)) static gpa_t nonpaging_gva_to_gpa_nested(struct kvm_vcpu *vcpu, gva_t vaddr,
      u32 access,
      struct x86_exception *exception)
{
 if (exception)
  exception->error_code = 0;
 return vcpu->arch.nested_mmu.translate_gpa(vcpu, vaddr, access, exception);
}
