
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vmcs_host_state {int gs_sel; int fs_sel; int ds_sel; int es_sel; scalar_t__ ldt_sel; } ;
struct TYPE_5__ {int host_state_reload; } ;
struct TYPE_6__ {TYPE_2__ stat; } ;
struct vcpu_vmx {int guest_state_loaded; int guest_msrs_ready; int msr_host_kernel_gs_base; int msr_guest_kernel_gs_base; TYPE_3__ vcpu; TYPE_1__* loaded_vmcs; } ;
struct TYPE_4__ {struct vmcs_host_state host_state; } ;


 int MSR_KERNEL_GS_BASE ;
 int ds ;
 int es ;
 int fs ;
 int gs ;
 int invalidate_tss_limit () ;
 int kvm_load_ldt (scalar_t__) ;
 int load_fixmap_gdt (int ) ;
 int load_gs_index (int) ;
 int loadsegment (int ,int) ;
 int raw_smp_processor_id () ;
 int rdmsrl (int ,int ) ;
 scalar_t__ unlikely (int) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void vmx_prepare_switch_to_host(struct vcpu_vmx *vmx)
{
 struct vmcs_host_state *host_state;

 if (!vmx->guest_state_loaded)
  return;

 host_state = &vmx->loaded_vmcs->host_state;

 ++vmx->vcpu.stat.host_state_reload;




 if (host_state->ldt_sel || (host_state->gs_sel & 7)) {
  kvm_load_ldt(host_state->ldt_sel);



  loadsegment(gs, host_state->gs_sel);

 }
 if (host_state->fs_sel & 7)
  loadsegment(fs, host_state->fs_sel);






 invalidate_tss_limit();



 load_fixmap_gdt(raw_smp_processor_id());
 vmx->guest_state_loaded = 0;
 vmx->guest_msrs_ready = 0;
}
