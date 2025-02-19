
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_21__ {int base; int limit; int attrib; int selector; } ;
struct TYPE_20__ {int base; int limit; int attrib; int selector; } ;
struct TYPE_19__ {int base; int limit; int attrib; int selector; } ;
struct TYPE_18__ {int base; int limit; int attrib; int selector; } ;
struct TYPE_17__ {int base; int limit; int attrib; int selector; } ;
struct TYPE_16__ {int base; int limit; int attrib; int selector; } ;
struct TYPE_15__ {int base; int limit; int attrib; int selector; } ;
struct TYPE_14__ {int base; int limit; int attrib; int selector; } ;
struct TYPE_13__ {int base; int limit; int attrib; int selector; } ;
struct TYPE_12__ {int base; int limit; int attrib; int selector; } ;
struct vmcb_save_area {int last_excp_to; int last_excp_from; int br_to; int br_from; int dbgctl; int g_pat; int sysenter_eip; int sysenter_esp; int sysenter_cs; int kernel_gs_base; int sfmask; int cstar; int lstar; int star; int rax; int rsp; int rflags; int rip; int dr7; int dr6; int cr4; int cr3; int cr2; int cr0; int efer; int cpl; TYPE_8__ tr; TYPE_7__ idtr; TYPE_6__ ldtr; TYPE_5__ gdtr; TYPE_4__ gs; TYPE_3__ fs; TYPE_2__ ds; TYPE_1__ ss; TYPE_11__ cs; TYPE_10__ es; } ;
struct vmcb_control_area {int intercept_cr; int intercept_dr; int avic_physical_id; int avic_logical_id; int avic_backing_page; int next_rip; int virt_ext; int event_inj_err; int event_inj; int avic_vapic_bar; int nested_cr3; int nested_ctl; int exit_int_info_err; int exit_int_info; int exit_info_2; int exit_info_1; int exit_code; int int_state; int int_vector; int int_ctl; int tlb_ctl; int asid; int tsc_offset; int msrpm_base_pa; int iopm_base_pa; int pause_filter_thresh; int pause_filter_count; int intercept; int intercept_exceptions; } ;
struct vcpu_svm {TYPE_9__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_22__ {struct vmcb_save_area save; struct vmcb_control_area control; } ;


 int dump_invalid_vmcb ;
 int pr_err (char*,...) ;
 int pr_warn_ratelimited (char*) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void dump_vmcb(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 struct vmcb_control_area *control = &svm->vmcb->control;
 struct vmcb_save_area *save = &svm->vmcb->save;

 if (!dump_invalid_vmcb) {
  pr_warn_ratelimited("set kvm_amd.dump_invalid_vmcb=1 to dump internal KVM state.\n");
  return;
 }

 pr_err("VMCB Control Area:\n");
 pr_err("%-20s%04x\n", "cr_read:", control->intercept_cr & 0xffff);
 pr_err("%-20s%04x\n", "cr_write:", control->intercept_cr >> 16);
 pr_err("%-20s%04x\n", "dr_read:", control->intercept_dr & 0xffff);
 pr_err("%-20s%04x\n", "dr_write:", control->intercept_dr >> 16);
 pr_err("%-20s%08x\n", "exceptions:", control->intercept_exceptions);
 pr_err("%-20s%016llx\n", "intercepts:", control->intercept);
 pr_err("%-20s%d\n", "pause filter count:", control->pause_filter_count);
 pr_err("%-20s%d\n", "pause filter threshold:",
        control->pause_filter_thresh);
 pr_err("%-20s%016llx\n", "iopm_base_pa:", control->iopm_base_pa);
 pr_err("%-20s%016llx\n", "msrpm_base_pa:", control->msrpm_base_pa);
 pr_err("%-20s%016llx\n", "tsc_offset:", control->tsc_offset);
 pr_err("%-20s%d\n", "asid:", control->asid);
 pr_err("%-20s%d\n", "tlb_ctl:", control->tlb_ctl);
 pr_err("%-20s%08x\n", "int_ctl:", control->int_ctl);
 pr_err("%-20s%08x\n", "int_vector:", control->int_vector);
 pr_err("%-20s%08x\n", "int_state:", control->int_state);
 pr_err("%-20s%08x\n", "exit_code:", control->exit_code);
 pr_err("%-20s%016llx\n", "exit_info1:", control->exit_info_1);
 pr_err("%-20s%016llx\n", "exit_info2:", control->exit_info_2);
 pr_err("%-20s%08x\n", "exit_int_info:", control->exit_int_info);
 pr_err("%-20s%08x\n", "exit_int_info_err:", control->exit_int_info_err);
 pr_err("%-20s%lld\n", "nested_ctl:", control->nested_ctl);
 pr_err("%-20s%016llx\n", "nested_cr3:", control->nested_cr3);
 pr_err("%-20s%016llx\n", "avic_vapic_bar:", control->avic_vapic_bar);
 pr_err("%-20s%08x\n", "event_inj:", control->event_inj);
 pr_err("%-20s%08x\n", "event_inj_err:", control->event_inj_err);
 pr_err("%-20s%lld\n", "virt_ext:", control->virt_ext);
 pr_err("%-20s%016llx\n", "next_rip:", control->next_rip);
 pr_err("%-20s%016llx\n", "avic_backing_page:", control->avic_backing_page);
 pr_err("%-20s%016llx\n", "avic_logical_id:", control->avic_logical_id);
 pr_err("%-20s%016llx\n", "avic_physical_id:", control->avic_physical_id);
 pr_err("VMCB State Save Area:\n");
 pr_err("%-5s s: %04x a: %04x l: %08x b: %016llx\n",
        "es:",
        save->es.selector, save->es.attrib,
        save->es.limit, save->es.base);
 pr_err("%-5s s: %04x a: %04x l: %08x b: %016llx\n",
        "cs:",
        save->cs.selector, save->cs.attrib,
        save->cs.limit, save->cs.base);
 pr_err("%-5s s: %04x a: %04x l: %08x b: %016llx\n",
        "ss:",
        save->ss.selector, save->ss.attrib,
        save->ss.limit, save->ss.base);
 pr_err("%-5s s: %04x a: %04x l: %08x b: %016llx\n",
        "ds:",
        save->ds.selector, save->ds.attrib,
        save->ds.limit, save->ds.base);
 pr_err("%-5s s: %04x a: %04x l: %08x b: %016llx\n",
        "fs:",
        save->fs.selector, save->fs.attrib,
        save->fs.limit, save->fs.base);
 pr_err("%-5s s: %04x a: %04x l: %08x b: %016llx\n",
        "gs:",
        save->gs.selector, save->gs.attrib,
        save->gs.limit, save->gs.base);
 pr_err("%-5s s: %04x a: %04x l: %08x b: %016llx\n",
        "gdtr:",
        save->gdtr.selector, save->gdtr.attrib,
        save->gdtr.limit, save->gdtr.base);
 pr_err("%-5s s: %04x a: %04x l: %08x b: %016llx\n",
        "ldtr:",
        save->ldtr.selector, save->ldtr.attrib,
        save->ldtr.limit, save->ldtr.base);
 pr_err("%-5s s: %04x a: %04x l: %08x b: %016llx\n",
        "idtr:",
        save->idtr.selector, save->idtr.attrib,
        save->idtr.limit, save->idtr.base);
 pr_err("%-5s s: %04x a: %04x l: %08x b: %016llx\n",
        "tr:",
        save->tr.selector, save->tr.attrib,
        save->tr.limit, save->tr.base);
 pr_err("cpl:            %d                efer:         %016llx\n",
  save->cpl, save->efer);
 pr_err("%-15s %016llx %-13s %016llx\n",
        "cr0:", save->cr0, "cr2:", save->cr2);
 pr_err("%-15s %016llx %-13s %016llx\n",
        "cr3:", save->cr3, "cr4:", save->cr4);
 pr_err("%-15s %016llx %-13s %016llx\n",
        "dr6:", save->dr6, "dr7:", save->dr7);
 pr_err("%-15s %016llx %-13s %016llx\n",
        "rip:", save->rip, "rflags:", save->rflags);
 pr_err("%-15s %016llx %-13s %016llx\n",
        "rsp:", save->rsp, "rax:", save->rax);
 pr_err("%-15s %016llx %-13s %016llx\n",
        "star:", save->star, "lstar:", save->lstar);
 pr_err("%-15s %016llx %-13s %016llx\n",
        "cstar:", save->cstar, "sfmask:", save->sfmask);
 pr_err("%-15s %016llx %-13s %016llx\n",
        "kernel_gs_base:", save->kernel_gs_base,
        "sysenter_cs:", save->sysenter_cs);
 pr_err("%-15s %016llx %-13s %016llx\n",
        "sysenter_esp:", save->sysenter_esp,
        "sysenter_eip:", save->sysenter_eip);
 pr_err("%-15s %016llx %-13s %016llx\n",
        "gpat:", save->g_pat, "dbgctl:", save->dbgctl);
 pr_err("%-15s %016llx %-13s %016llx\n",
        "br_from:", save->br_from, "br_to:", save->br_to);
 pr_err("%-15s %016llx %-13s %016llx\n",
        "excp_from:", save->last_excp_from,
        "excp_to:", save->last_excp_to);
}
