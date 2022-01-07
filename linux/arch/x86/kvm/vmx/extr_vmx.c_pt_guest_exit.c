
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ctl; } ;
struct TYPE_5__ {int ctl; } ;
struct TYPE_4__ {TYPE_3__ host; int addr_range; TYPE_2__ guest; } ;
struct vcpu_vmx {TYPE_1__ pt_desc; } ;


 int MSR_IA32_RTIT_CTL ;
 scalar_t__ PT_MODE_SYSTEM ;
 int RTIT_CTL_TRACEEN ;
 int pt_load_msr (TYPE_3__*,int ) ;
 scalar_t__ pt_mode ;
 int pt_save_msr (TYPE_2__*,int ) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void pt_guest_exit(struct vcpu_vmx *vmx)
{
 if (pt_mode == PT_MODE_SYSTEM)
  return;

 if (vmx->pt_desc.guest.ctl & RTIT_CTL_TRACEEN) {
  pt_save_msr(&vmx->pt_desc.guest, vmx->pt_desc.addr_range);
  pt_load_msr(&vmx->pt_desc.host, vmx->pt_desc.addr_range);
 }


 wrmsrl(MSR_IA32_RTIT_CTL, vmx->pt_desc.host.ctl);
}
