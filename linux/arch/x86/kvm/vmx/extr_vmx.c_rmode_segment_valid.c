
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int dpl; int type; int base; int selector; int limit; } ;


 int VCPU_SREG_CS ;
 int vmx_get_segment (struct kvm_vcpu*,struct kvm_segment*,int) ;
 int vmx_segment_access_rights (struct kvm_segment*) ;

__attribute__((used)) static bool rmode_segment_valid(struct kvm_vcpu *vcpu, int seg)
{
 struct kvm_segment var;
 u32 ar;

 vmx_get_segment(vcpu, &var, seg);
 var.dpl = 0x3;
 if (seg == VCPU_SREG_CS)
  var.type = 0x3;
 ar = vmx_segment_access_rights(&var);

 if (var.base != (var.selector << 4))
  return 0;
 if (var.limit != 0xffff)
  return 0;
 if (ar != 0xf3)
  return 0;

 return 1;
}
