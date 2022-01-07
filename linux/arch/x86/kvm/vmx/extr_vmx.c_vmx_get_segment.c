
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct kvm_segment* segs; scalar_t__ vm86_active; } ;
struct vcpu_vmx {TYPE_1__ rmode; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {scalar_t__ selector; int unusable; int type; int s; int dpl; int present; int avl; int l; int db; int g; int limit; void* base; } ;


 int VCPU_SREG_LDTR ;
 int VCPU_SREG_TR ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmx_read_guest_seg_ar (struct vcpu_vmx*,int) ;
 void* vmx_read_guest_seg_base (struct vcpu_vmx*,int) ;
 int vmx_read_guest_seg_limit (struct vcpu_vmx*,int) ;
 scalar_t__ vmx_read_guest_seg_selector (struct vcpu_vmx*,int) ;

void vmx_get_segment(struct kvm_vcpu *vcpu, struct kvm_segment *var, int seg)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 u32 ar;

 if (vmx->rmode.vm86_active && seg != VCPU_SREG_LDTR) {
  *var = vmx->rmode.segs[seg];
  if (seg == VCPU_SREG_TR
      || var->selector == vmx_read_guest_seg_selector(vmx, seg))
   return;
  var->base = vmx_read_guest_seg_base(vmx, seg);
  var->selector = vmx_read_guest_seg_selector(vmx, seg);
  return;
 }
 var->base = vmx_read_guest_seg_base(vmx, seg);
 var->limit = vmx_read_guest_seg_limit(vmx, seg);
 var->selector = vmx_read_guest_seg_selector(vmx, seg);
 ar = vmx_read_guest_seg_ar(vmx, seg);
 var->unusable = (ar >> 16) & 1;
 var->type = ar & 15;
 var->s = (ar >> 4) & 1;
 var->dpl = (ar >> 5) & 3;







 var->present = !var->unusable;
 var->avl = (ar >> 12) & 1;
 var->l = (ar >> 13) & 1;
 var->db = (ar >> 14) & 1;
 var->g = (ar >> 15) & 1;
}
