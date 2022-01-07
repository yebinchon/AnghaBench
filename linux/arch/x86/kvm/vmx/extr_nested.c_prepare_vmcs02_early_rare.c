
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmcs12 {int dummy; } ;
struct TYPE_2__ {scalar_t__ vpid02; } ;
struct vcpu_vmx {scalar_t__ vpid; TYPE_1__ nested; } ;


 int VIRTUAL_PROCESSOR_ID ;
 int VMCS_LINK_POINTER ;
 scalar_t__ enable_vpid ;
 scalar_t__ nested_cpu_has_vpid (struct vmcs12*) ;
 int prepare_vmcs02_constant_state (struct vcpu_vmx*) ;
 int vmcs_write16 (int ,scalar_t__) ;
 int vmcs_write64 (int ,unsigned long long) ;

__attribute__((used)) static void prepare_vmcs02_early_rare(struct vcpu_vmx *vmx,
          struct vmcs12 *vmcs12)
{
 prepare_vmcs02_constant_state(vmx);

 vmcs_write64(VMCS_LINK_POINTER, -1ull);

 if (enable_vpid) {
  if (nested_cpu_has_vpid(vmcs12) && vmx->nested.vpid02)
   vmcs_write16(VIRTUAL_PROCESSOR_ID, vmx->nested.vpid02);
  else
   vmcs_write16(VIRTUAL_PROCESSOR_ID, vmx->vpid);
 }
}
