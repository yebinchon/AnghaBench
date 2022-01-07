
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_segment* segs; scalar_t__ vm86_active; } ;
struct vcpu_vmx {int emulation_required; TYPE_1__ rmode; } ;
struct kvm_vmx_segment_field {int ar_bytes; int selector; int limit; int base; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int type; int selector; int limit; int base; scalar_t__ s; } ;


 int VCPU_SREG_LDTR ;
 int VCPU_SREG_TR ;
 int emulation_required (struct kvm_vcpu*) ;
 scalar_t__ enable_unrestricted_guest ;
 int fix_rmode_seg (int,struct kvm_segment*) ;
 struct kvm_vmx_segment_field* kvm_vmx_segment_fields ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmcs_write16 (int ,int ) ;
 int vmcs_write32 (int ,int ) ;
 int vmcs_writel (int ,int ) ;
 int vmx_segment_access_rights (struct kvm_segment*) ;
 int vmx_segment_cache_clear (struct vcpu_vmx*) ;

void vmx_set_segment(struct kvm_vcpu *vcpu, struct kvm_segment *var, int seg)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 const struct kvm_vmx_segment_field *sf = &kvm_vmx_segment_fields[seg];

 vmx_segment_cache_clear(vmx);

 if (vmx->rmode.vm86_active && seg != VCPU_SREG_LDTR) {
  vmx->rmode.segs[seg] = *var;
  if (seg == VCPU_SREG_TR)
   vmcs_write16(sf->selector, var->selector);
  else if (var->s)
   fix_rmode_seg(seg, &vmx->rmode.segs[seg]);
  goto out;
 }

 vmcs_writel(sf->base, var->base);
 vmcs_write32(sf->limit, var->limit);
 vmcs_write16(sf->selector, var->selector);
 if (enable_unrestricted_guest && (seg != VCPU_SREG_LDTR))
  var->type |= 0x1;

 vmcs_write32(sf->ar_bytes, vmx_segment_access_rights(var));

out:
 vmx->emulation_required = emulation_required(vcpu);
}
