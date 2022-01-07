
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vmcs12 {unsigned int exception_bitmap; } ;
struct TYPE_5__ {unsigned int nr; int has_payload; unsigned long payload; int error_code; scalar_t__ nested_apf; } ;
struct TYPE_4__ {unsigned long nested_apf_token; } ;
struct TYPE_6__ {unsigned long cr2; unsigned long dr6; TYPE_2__ exception; TYPE_1__ apf; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;


 unsigned int DB_VECTOR ;
 unsigned long DR6_BT ;
 unsigned long DR6_FIXED_1 ;
 unsigned long DR6_RTM ;
 unsigned int PF_VECTOR ;
 struct vmcs12* get_vmcs12 (struct kvm_vcpu*) ;
 scalar_t__ nested_vmx_is_page_fault_vmexit (struct vmcs12*,int ) ;

__attribute__((used)) static int nested_vmx_check_exception(struct kvm_vcpu *vcpu, unsigned long *exit_qual)
{
 struct vmcs12 *vmcs12 = get_vmcs12(vcpu);
 unsigned int nr = vcpu->arch.exception.nr;
 bool has_payload = vcpu->arch.exception.has_payload;
 unsigned long payload = vcpu->arch.exception.payload;

 if (nr == PF_VECTOR) {
  if (vcpu->arch.exception.nested_apf) {
   *exit_qual = vcpu->arch.apf.nested_apf_token;
   return 1;
  }
  if (nested_vmx_is_page_fault_vmexit(vmcs12,
          vcpu->arch.exception.error_code)) {
   *exit_qual = has_payload ? payload : vcpu->arch.cr2;
   return 1;
  }
 } else if (vmcs12->exception_bitmap & (1u << nr)) {
  if (nr == DB_VECTOR) {
   if (!has_payload) {
    payload = vcpu->arch.dr6;
    payload &= ~(DR6_FIXED_1 | DR6_BT);
    payload ^= DR6_RTM;
   }
   *exit_qual = payload;
  } else
   *exit_qual = 0;
  return 1;
 }

 return 0;
}
