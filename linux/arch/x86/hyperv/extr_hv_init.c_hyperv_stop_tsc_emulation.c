
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hv_tsc_emulation_status {scalar_t__ inprogress; } ;


 int HV_X64_MSR_TSC_EMULATION_STATUS ;
 int HV_X64_MSR_TSC_FREQUENCY ;
 int div64_u64 (int ,int) ;
 int rdmsrl (int ,int ) ;
 int tsc_khz ;
 int wrmsrl (int ,int ) ;

void hyperv_stop_tsc_emulation(void)
{
 u64 freq;
 struct hv_tsc_emulation_status emu_status;

 rdmsrl(HV_X64_MSR_TSC_EMULATION_STATUS, *(u64 *)&emu_status);
 emu_status.inprogress = 0;
 wrmsrl(HV_X64_MSR_TSC_EMULATION_STATUS, *(u64 *)&emu_status);

 rdmsrl(HV_X64_MSR_TSC_FREQUENCY, freq);
 tsc_khz = div64_u64(freq, 1000);
}
