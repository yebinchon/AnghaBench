
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct work_struct {int dummy; } ;
struct hv_tsc_emulation_status {scalar_t__ inprogress; } ;


 int HV_X64_MSR_TSC_EMULATION_STATUS ;
 int hv_reenlightenment_cb () ;
 int rdmsrl (int ,int ) ;

__attribute__((used)) static void hv_reenlightenment_notify(struct work_struct *dummy)
{
 struct hv_tsc_emulation_status emu_status;

 rdmsrl(HV_X64_MSR_TSC_EMULATION_STATUS, *(u64 *)&emu_status);


 if (hv_reenlightenment_cb && emu_status.inprogress)
  hv_reenlightenment_cb();
}
