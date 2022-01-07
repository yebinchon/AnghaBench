
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_12__ ;


typedef int u64 ;
struct TYPE_25__ {int nested_ctl; int msrpm_base_pa; int iopm_base_pa; int int_ctl; int pause_filter_thresh; int pause_filter_count; int event_inj_err; int event_inj; int int_state; int int_vector; int virt_ext; scalar_t__ tsc_offset; int intercept; int intercept_exceptions; int intercept_dr; int intercept_cr; int nested_cr3; } ;
struct TYPE_28__ {int cpl; int dr6; int dr7; int rip; int rsp; int rax; int cr2; int cr3; int cr4; int cr0; int efer; int rflags; int idtr; int gdtr; int ds; int ss; int cs; int es; } ;
struct vmcb {TYPE_3__ control; TYPE_6__ save; } ;
struct TYPE_24__ {int vmcb_msrpm; int vmcb_iopm; int vmcb; int intercept; int intercept_exceptions; int intercept_dr; int intercept_cr; int nested_cr3; } ;
struct TYPE_27__ {int hflags; int tsc_offset; int cr2; int cr3; } ;
struct TYPE_29__ {TYPE_5__ arch; } ;
struct vcpu_svm {TYPE_12__* vmcb; TYPE_2__ nested; TYPE_7__ vcpu; } ;
struct kvm_host_map {int dummy; } ;
struct TYPE_26__ {int cpl; int dr6; int dr7; int rip; int rsp; int rax; int cr2; int cr3; int idtr; int gdtr; int ds; int ss; int cs; int es; } ;
struct TYPE_23__ {int int_ctl; int pause_filter_thresh; int pause_filter_count; int event_inj_err; int event_inj; int int_state; int int_vector; int virt_ext; int tsc_offset; } ;
struct TYPE_22__ {TYPE_1__ control; TYPE_4__ save; } ;


 int HF_HIF_MASK ;
 int HF_VINTR_MASK ;
 int INTERCEPT_CR8_READ ;
 int INTERCEPT_CR8_WRITE ;
 int INTERCEPT_VMMCALL ;
 int SVM_NESTED_CTL_NP_ENABLE ;
 int V_INTR_MASKING_MASK ;
 int X86_EFLAGS_IF ;
 int clr_cr_intercept (struct vcpu_svm*,int ) ;
 int clr_intercept (struct vcpu_svm*,int ) ;
 int enable_gif (struct vcpu_svm*) ;
 int enter_guest_mode (TYPE_7__*) ;
 int kvm_get_rflags (TYPE_7__*) ;
 int kvm_mmu_reset_context (TYPE_7__*) ;
 int kvm_rax_write (TYPE_7__*,int ) ;
 int kvm_rip_write (TYPE_7__*,int ) ;
 int kvm_rsp_write (TYPE_7__*,int ) ;
 int kvm_set_cr3 (TYPE_7__*,int ) ;
 int kvm_set_rflags (TYPE_7__*,int ) ;
 int kvm_vcpu_unmap (TYPE_7__*,struct kvm_host_map*,int) ;
 int mark_all_dirty (TYPE_12__*) ;
 int nested_svm_init_mmu_context (TYPE_7__*) ;
 scalar_t__ npt_enabled ;
 int recalc_intercepts (struct vcpu_svm*) ;
 int svm_flush_tlb (TYPE_7__*,int) ;
 int svm_set_cr0 (TYPE_7__*,int ) ;
 int svm_set_cr4 (TYPE_7__*,int ) ;
 int svm_set_efer (TYPE_7__*,int ) ;

__attribute__((used)) static void enter_svm_guest_mode(struct vcpu_svm *svm, u64 vmcb_gpa,
     struct vmcb *nested_vmcb, struct kvm_host_map *map)
{
 if (kvm_get_rflags(&svm->vcpu) & X86_EFLAGS_IF)
  svm->vcpu.arch.hflags |= HF_HIF_MASK;
 else
  svm->vcpu.arch.hflags &= ~HF_HIF_MASK;

 if (nested_vmcb->control.nested_ctl & SVM_NESTED_CTL_NP_ENABLE) {
  svm->nested.nested_cr3 = nested_vmcb->control.nested_cr3;
  nested_svm_init_mmu_context(&svm->vcpu);
 }


 svm->vmcb->save.es = nested_vmcb->save.es;
 svm->vmcb->save.cs = nested_vmcb->save.cs;
 svm->vmcb->save.ss = nested_vmcb->save.ss;
 svm->vmcb->save.ds = nested_vmcb->save.ds;
 svm->vmcb->save.gdtr = nested_vmcb->save.gdtr;
 svm->vmcb->save.idtr = nested_vmcb->save.idtr;
 kvm_set_rflags(&svm->vcpu, nested_vmcb->save.rflags);
 svm_set_efer(&svm->vcpu, nested_vmcb->save.efer);
 svm_set_cr0(&svm->vcpu, nested_vmcb->save.cr0);
 svm_set_cr4(&svm->vcpu, nested_vmcb->save.cr4);
 if (npt_enabled) {
  svm->vmcb->save.cr3 = nested_vmcb->save.cr3;
  svm->vcpu.arch.cr3 = nested_vmcb->save.cr3;
 } else
  (void)kvm_set_cr3(&svm->vcpu, nested_vmcb->save.cr3);


 kvm_mmu_reset_context(&svm->vcpu);

 svm->vmcb->save.cr2 = svm->vcpu.arch.cr2 = nested_vmcb->save.cr2;
 kvm_rax_write(&svm->vcpu, nested_vmcb->save.rax);
 kvm_rsp_write(&svm->vcpu, nested_vmcb->save.rsp);
 kvm_rip_write(&svm->vcpu, nested_vmcb->save.rip);


 svm->vmcb->save.rax = nested_vmcb->save.rax;
 svm->vmcb->save.rsp = nested_vmcb->save.rsp;
 svm->vmcb->save.rip = nested_vmcb->save.rip;
 svm->vmcb->save.dr7 = nested_vmcb->save.dr7;
 svm->vmcb->save.dr6 = nested_vmcb->save.dr6;
 svm->vmcb->save.cpl = nested_vmcb->save.cpl;

 svm->nested.vmcb_msrpm = nested_vmcb->control.msrpm_base_pa & ~0x0fffULL;
 svm->nested.vmcb_iopm = nested_vmcb->control.iopm_base_pa & ~0x0fffULL;


 svm->nested.intercept_cr = nested_vmcb->control.intercept_cr;
 svm->nested.intercept_dr = nested_vmcb->control.intercept_dr;
 svm->nested.intercept_exceptions = nested_vmcb->control.intercept_exceptions;
 svm->nested.intercept = nested_vmcb->control.intercept;

 svm_flush_tlb(&svm->vcpu, 1);
 svm->vmcb->control.int_ctl = nested_vmcb->control.int_ctl | V_INTR_MASKING_MASK;
 if (nested_vmcb->control.int_ctl & V_INTR_MASKING_MASK)
  svm->vcpu.arch.hflags |= HF_VINTR_MASK;
 else
  svm->vcpu.arch.hflags &= ~HF_VINTR_MASK;

 if (svm->vcpu.arch.hflags & HF_VINTR_MASK) {

  clr_cr_intercept(svm, INTERCEPT_CR8_READ);
  clr_cr_intercept(svm, INTERCEPT_CR8_WRITE);
 }


 clr_intercept(svm, INTERCEPT_VMMCALL);

 svm->vcpu.arch.tsc_offset += nested_vmcb->control.tsc_offset;
 svm->vmcb->control.tsc_offset = svm->vcpu.arch.tsc_offset;

 svm->vmcb->control.virt_ext = nested_vmcb->control.virt_ext;
 svm->vmcb->control.int_vector = nested_vmcb->control.int_vector;
 svm->vmcb->control.int_state = nested_vmcb->control.int_state;
 svm->vmcb->control.event_inj = nested_vmcb->control.event_inj;
 svm->vmcb->control.event_inj_err = nested_vmcb->control.event_inj_err;

 svm->vmcb->control.pause_filter_count =
  nested_vmcb->control.pause_filter_count;
 svm->vmcb->control.pause_filter_thresh =
  nested_vmcb->control.pause_filter_thresh;

 kvm_vcpu_unmap(&svm->vcpu, map, 1);


 enter_guest_mode(&svm->vcpu);





 recalc_intercepts(svm);

 svm->nested.vmcb = vmcb_gpa;

 enable_gif(svm);

 mark_all_dirty(svm->vmcb);
}
