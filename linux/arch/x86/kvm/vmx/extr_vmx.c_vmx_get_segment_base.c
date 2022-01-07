
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int base; } ;
struct TYPE_4__ {scalar_t__ vm86_active; } ;
struct TYPE_5__ {TYPE_1__ rmode; } ;


 TYPE_2__* to_vmx (struct kvm_vcpu*) ;
 int vmx_get_segment (struct kvm_vcpu*,struct kvm_segment*,int) ;
 int vmx_read_guest_seg_base (TYPE_2__*,int) ;

__attribute__((used)) static u64 vmx_get_segment_base(struct kvm_vcpu *vcpu, int seg)
{
 struct kvm_segment s;

 if (to_vmx(vcpu)->rmode.vm86_active) {
  vmx_get_segment(vcpu, &s, seg);
  return s.base;
 }
 return vmx_read_guest_seg_base(to_vmx(vcpu), seg);
}
