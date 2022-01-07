
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int need_vmcs12_to_shadow_sync; } ;
struct vcpu_vmx {TYPE_1__ nested; } ;


 int SECONDARY_EXEC_SHADOW_VMCS ;
 int VMCS_LINK_POINTER ;
 int secondary_exec_controls_clearbit (struct vcpu_vmx*,int ) ;
 int vmcs_write64 (int ,unsigned long long) ;

__attribute__((used)) static void vmx_disable_shadow_vmcs(struct vcpu_vmx *vmx)
{
 secondary_exec_controls_clearbit(vmx, SECONDARY_EXEC_SHADOW_VMCS);
 vmcs_write64(VMCS_LINK_POINTER, -1ull);
 vmx->nested.need_vmcs12_to_shadow_sync = 0;
}
