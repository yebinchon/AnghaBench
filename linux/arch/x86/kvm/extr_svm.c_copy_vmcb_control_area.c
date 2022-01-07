
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcb_control_area {int pause_filter_thresh; int pause_filter_count; int virt_ext; int nested_cr3; int event_inj_err; int event_inj; int nested_ctl; int exit_int_info_err; int exit_int_info; int exit_info_2; int exit_info_1; int exit_code_hi; int exit_code; int int_state; int int_vector; int int_ctl; int tlb_ctl; int asid; int tsc_offset; int msrpm_base_pa; int iopm_base_pa; int intercept; int intercept_exceptions; int intercept_dr; int intercept_cr; } ;
struct vmcb {struct vmcb_control_area control; } ;



__attribute__((used)) static inline void copy_vmcb_control_area(struct vmcb *dst_vmcb, struct vmcb *from_vmcb)
{
 struct vmcb_control_area *dst = &dst_vmcb->control;
 struct vmcb_control_area *from = &from_vmcb->control;

 dst->intercept_cr = from->intercept_cr;
 dst->intercept_dr = from->intercept_dr;
 dst->intercept_exceptions = from->intercept_exceptions;
 dst->intercept = from->intercept;
 dst->iopm_base_pa = from->iopm_base_pa;
 dst->msrpm_base_pa = from->msrpm_base_pa;
 dst->tsc_offset = from->tsc_offset;
 dst->asid = from->asid;
 dst->tlb_ctl = from->tlb_ctl;
 dst->int_ctl = from->int_ctl;
 dst->int_vector = from->int_vector;
 dst->int_state = from->int_state;
 dst->exit_code = from->exit_code;
 dst->exit_code_hi = from->exit_code_hi;
 dst->exit_info_1 = from->exit_info_1;
 dst->exit_info_2 = from->exit_info_2;
 dst->exit_int_info = from->exit_int_info;
 dst->exit_int_info_err = from->exit_int_info_err;
 dst->nested_ctl = from->nested_ctl;
 dst->event_inj = from->event_inj;
 dst->event_inj_err = from->event_inj_err;
 dst->nested_cr3 = from->nested_cr3;
 dst->virt_ext = from->virt_ext;
 dst->pause_filter_count = from->pause_filter_count;
 dst->pause_filter_thresh = from->pause_filter_thresh;
}
