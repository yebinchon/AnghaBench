
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_segment {unsigned int selector; int type; unsigned int dpl; int present; int s; scalar_t__ unusable; } ;


 unsigned int SEGMENT_RPL_MASK ;
 int VCPU_SREG_SS ;
 int vmx_get_segment (struct kvm_vcpu*,struct kvm_segment*,int ) ;

__attribute__((used)) static bool stack_segment_valid(struct kvm_vcpu *vcpu)
{
 struct kvm_segment ss;
 unsigned int ss_rpl;

 vmx_get_segment(vcpu, &ss, VCPU_SREG_SS);
 ss_rpl = ss.selector & SEGMENT_RPL_MASK;

 if (ss.unusable)
  return 1;
 if (ss.type != 3 && ss.type != 7)
  return 0;
 if (!ss.s)
  return 0;
 if (ss.dpl != ss_rpl)
  return 0;
 if (!ss.present)
  return 0;

 return 1;
}
