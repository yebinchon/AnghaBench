
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct vmcs_host_state {int es_sel; int ds_sel; int ldt_sel; } ;
struct vcpu_vmx {int req_immediate_exit; int guest_msrs_ready; int save_nmsrs; int guest_state_loaded; int msr_guest_kernel_gs_base; void* msr_host_kernel_gs_base; TYPE_2__* loaded_vmcs; TYPE_1__* guest_msrs; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_7__ {unsigned long fsbase; void* gsbase; int gsindex; int fsindex; } ;
struct TYPE_8__ {TYPE_3__ thread; int mm; } ;
struct TYPE_6__ {struct vmcs_host_state host_state; } ;
struct TYPE_5__ {int mask; int data; int index; } ;


 int MSR_FS_BASE ;
 int MSR_KERNEL_GS_BASE ;
 unsigned long cpu_kernelmode_gs_base (int) ;
 TYPE_4__* current ;
 int ds ;
 int es ;
 int fs ;
 int gs ;
 int is_64bit_mm (int ) ;
 int kvm_read_ldt () ;
 int kvm_set_shared_msr (int ,int ,int ) ;
 scalar_t__ likely (int ) ;
 int raw_smp_processor_id () ;
 void* read_msr (int ) ;
 int save_fsgs_for_kvm () ;
 int savesegment (int ,int ) ;
 unsigned long segment_base (int ) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmx_set_host_fs_gs (struct vmcs_host_state*,int ,int ,unsigned long,unsigned long) ;
 int wrmsrl (int ,int ) ;

void vmx_prepare_switch_to_guest(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 struct vmcs_host_state *host_state;



 unsigned long fs_base, gs_base;
 u16 fs_sel, gs_sel;
 int i;

 vmx->req_immediate_exit = 0;






 if (!vmx->guest_msrs_ready) {
  vmx->guest_msrs_ready = 1;
  for (i = 0; i < vmx->save_nmsrs; ++i)
   kvm_set_shared_msr(vmx->guest_msrs[i].index,
        vmx->guest_msrs[i].data,
        vmx->guest_msrs[i].mask);

 }
 if (vmx->guest_state_loaded)
  return;

 host_state = &vmx->loaded_vmcs->host_state;





 host_state->ldt_sel = kvm_read_ldt();
 savesegment(fs, fs_sel);
 savesegment(gs, gs_sel);
 fs_base = segment_base(fs_sel);
 gs_base = segment_base(gs_sel);


 vmx_set_host_fs_gs(host_state, fs_sel, gs_sel, fs_base, gs_base);
 vmx->guest_state_loaded = 1;
}
