
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int selector; int dpl; int s; } ;


 int SEGMENT_RPL_MASK ;
 int VCPU_SREG_CS ;
 int VCPU_SREG_SS ;
 int emulate_invalid_guest_state ;
 int vmx_set_segment (struct kvm_vcpu*,struct kvm_segment*,int) ;

__attribute__((used)) static void fix_pmode_seg(struct kvm_vcpu *vcpu, int seg,
  struct kvm_segment *save)
{
 if (!emulate_invalid_guest_state) {







  if (seg == VCPU_SREG_CS || seg == VCPU_SREG_SS)
   save->selector &= ~SEGMENT_RPL_MASK;
  save->dpl = save->selector & SEGMENT_RPL_MASK;
  save->s = 1;
 }
 vmx_set_segment(vcpu, save, seg);
}
