
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int efer; } ;
struct TYPE_6__ {TYPE_1__ arch; } ;
struct vcpu_vmx {int save_nmsrs; int guest_msrs_ready; TYPE_2__ vcpu; } ;


 int EFER_SCE ;
 int MSR_EFER ;
 int MSR_LSTAR ;
 int MSR_STAR ;
 int MSR_SYSCALL_MASK ;
 int MSR_TSC_AUX ;
 int X86_FEATURE_RDTSCP ;
 int __find_msr_index (struct vcpu_vmx*,int ) ;
 scalar_t__ cpu_has_vmx_msr_bitmap () ;
 scalar_t__ guest_cpuid_has (TYPE_2__*,int ) ;
 scalar_t__ is_long_mode (TYPE_2__*) ;
 int move_msr_up (struct vcpu_vmx*,int,int ) ;
 scalar_t__ update_transition_efer (struct vcpu_vmx*,int) ;
 int vmx_update_msr_bitmap (TYPE_2__*) ;

__attribute__((used)) static void setup_msrs(struct vcpu_vmx *vmx)
{
 int save_nmsrs, index;

 save_nmsrs = 0;
 index = __find_msr_index(vmx, MSR_EFER);
 if (index >= 0 && update_transition_efer(vmx, index))
  move_msr_up(vmx, index, save_nmsrs++);
 index = __find_msr_index(vmx, MSR_TSC_AUX);
 if (index >= 0 && guest_cpuid_has(&vmx->vcpu, X86_FEATURE_RDTSCP))
  move_msr_up(vmx, index, save_nmsrs++);

 vmx->save_nmsrs = save_nmsrs;
 vmx->guest_msrs_ready = 0;

 if (cpu_has_vmx_msr_bitmap())
  vmx_update_msr_bitmap(&vmx->vcpu);
}
