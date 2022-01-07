
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int need_vmcs12_to_shadow_sync; int dirty_vmcs12; int current_vmptr; } ;
struct TYPE_3__ {int shadow_vmcs; } ;
struct vcpu_vmx {TYPE_2__ nested; TYPE_1__ vmcs01; } ;
typedef int gpa_t ;


 int SECONDARY_EXEC_SHADOW_VMCS ;
 int VMCS_LINK_POINTER ;
 int __pa (int ) ;
 scalar_t__ enable_shadow_vmcs ;
 int secondary_exec_controls_setbit (struct vcpu_vmx*,int ) ;
 int vmcs_write64 (int ,int ) ;

__attribute__((used)) static void set_current_vmptr(struct vcpu_vmx *vmx, gpa_t vmptr)
{
 vmx->nested.current_vmptr = vmptr;
 if (enable_shadow_vmcs) {
  secondary_exec_controls_setbit(vmx, SECONDARY_EXEC_SHADOW_VMCS);
  vmcs_write64(VMCS_LINK_POINTER,
        __pa(vmx->vmcs01.shadow_vmcs));
  vmx->nested.need_vmcs12_to_shadow_sync = 1;
 }
 vmx->nested.dirty_vmcs12 = 1;
}
