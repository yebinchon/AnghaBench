
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int selector; int type; int present; scalar_t__ unusable; } ;


 int SEGMENT_TI_MASK ;
 int VCPU_SREG_LDTR ;
 int vmx_get_segment (struct kvm_vcpu*,struct kvm_segment*,int ) ;

__attribute__((used)) static bool ldtr_valid(struct kvm_vcpu *vcpu)
{
 struct kvm_segment ldtr;

 vmx_get_segment(vcpu, &ldtr, VCPU_SREG_LDTR);

 if (ldtr.unusable)
  return 1;
 if (ldtr.selector & SEGMENT_TI_MASK)
  return 0;
 if (ldtr.type != 2)
  return 0;
 if (!ldtr.present)
  return 0;

 return 1;
}
