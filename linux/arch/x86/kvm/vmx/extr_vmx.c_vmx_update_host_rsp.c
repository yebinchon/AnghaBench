
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_vmx {TYPE_2__* loaded_vmcs; } ;
struct TYPE_3__ {unsigned long rsp; } ;
struct TYPE_4__ {TYPE_1__ host_state; } ;


 int HOST_RSP ;
 scalar_t__ unlikely (int) ;
 int vmcs_writel (int ,unsigned long) ;

void vmx_update_host_rsp(struct vcpu_vmx *vmx, unsigned long host_rsp)
{
 if (unlikely(host_rsp != vmx->loaded_vmcs->host_state.rsp)) {
  vmx->loaded_vmcs->host_state.rsp = host_rsp;
  vmcs_writel(HOST_RSP, host_rsp);
 }
}
