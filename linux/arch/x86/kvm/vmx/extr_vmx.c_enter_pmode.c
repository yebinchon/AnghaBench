
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long save_rflags; int * segs; scalar_t__ vm86_active; } ;
struct vcpu_vmx {TYPE_1__ rmode; } ;
struct kvm_vcpu {int dummy; } ;


 int CR4_READ_SHADOW ;
 int GUEST_CR4 ;
 int GUEST_RFLAGS ;
 unsigned long RMODE_GUEST_OWNED_EFLAGS_BITS ;
 size_t VCPU_SREG_CS ;
 size_t VCPU_SREG_DS ;
 size_t VCPU_SREG_ES ;
 size_t VCPU_SREG_FS ;
 size_t VCPU_SREG_GS ;
 size_t VCPU_SREG_SS ;
 size_t VCPU_SREG_TR ;
 unsigned long X86_CR4_VME ;
 int fix_pmode_seg (struct kvm_vcpu*,size_t,int *) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int update_exception_bitmap (struct kvm_vcpu*) ;
 unsigned long vmcs_readl (int ) ;
 int vmcs_writel (int ,unsigned long) ;
 int vmx_get_segment (struct kvm_vcpu*,int *,size_t) ;
 int vmx_segment_cache_clear (struct vcpu_vmx*) ;
 int vmx_set_segment (struct kvm_vcpu*,int *,size_t) ;

__attribute__((used)) static void enter_pmode(struct kvm_vcpu *vcpu)
{
 unsigned long flags;
 struct vcpu_vmx *vmx = to_vmx(vcpu);





 vmx_get_segment(vcpu, &vmx->rmode.segs[VCPU_SREG_ES], VCPU_SREG_ES);
 vmx_get_segment(vcpu, &vmx->rmode.segs[VCPU_SREG_DS], VCPU_SREG_DS);
 vmx_get_segment(vcpu, &vmx->rmode.segs[VCPU_SREG_FS], VCPU_SREG_FS);
 vmx_get_segment(vcpu, &vmx->rmode.segs[VCPU_SREG_GS], VCPU_SREG_GS);
 vmx_get_segment(vcpu, &vmx->rmode.segs[VCPU_SREG_SS], VCPU_SREG_SS);
 vmx_get_segment(vcpu, &vmx->rmode.segs[VCPU_SREG_CS], VCPU_SREG_CS);

 vmx->rmode.vm86_active = 0;

 vmx_segment_cache_clear(vmx);

 vmx_set_segment(vcpu, &vmx->rmode.segs[VCPU_SREG_TR], VCPU_SREG_TR);

 flags = vmcs_readl(GUEST_RFLAGS);
 flags &= RMODE_GUEST_OWNED_EFLAGS_BITS;
 flags |= vmx->rmode.save_rflags & ~RMODE_GUEST_OWNED_EFLAGS_BITS;
 vmcs_writel(GUEST_RFLAGS, flags);

 vmcs_writel(GUEST_CR4, (vmcs_readl(GUEST_CR4) & ~X86_CR4_VME) |
   (vmcs_readl(CR4_READ_SHADOW) & X86_CR4_VME));

 update_exception_bitmap(vcpu);

 fix_pmode_seg(vcpu, VCPU_SREG_CS, &vmx->rmode.segs[VCPU_SREG_CS]);
 fix_pmode_seg(vcpu, VCPU_SREG_SS, &vmx->rmode.segs[VCPU_SREG_SS]);
 fix_pmode_seg(vcpu, VCPU_SREG_ES, &vmx->rmode.segs[VCPU_SREG_ES]);
 fix_pmode_seg(vcpu, VCPU_SREG_DS, &vmx->rmode.segs[VCPU_SREG_DS]);
 fix_pmode_seg(vcpu, VCPU_SREG_FS, &vmx->rmode.segs[VCPU_SREG_FS]);
 fix_pmode_seg(vcpu, VCPU_SREG_GS, &vmx->rmode.segs[VCPU_SREG_GS]);
}
