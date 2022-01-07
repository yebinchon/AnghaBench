
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t phys_addr_t ;


 size_t HV_CRASH_CTL_CRASH_NOTIFY ;
 size_t HV_CRASH_CTL_CRASH_NOTIFY_MSG ;
 int HV_X64_MSR_CRASH_CTL ;
 int HV_X64_MSR_CRASH_P0 ;
 int HV_X64_MSR_CRASH_P1 ;
 int HV_X64_MSR_CRASH_P2 ;
 int HV_X64_MSR_CRASH_P3 ;
 int HV_X64_MSR_CRASH_P4 ;
 int wrmsrl (int ,size_t) ;

void hyperv_report_panic_msg(phys_addr_t pa, size_t size)
{





 wrmsrl(HV_X64_MSR_CRASH_P0, 0);
 wrmsrl(HV_X64_MSR_CRASH_P1, 0);
 wrmsrl(HV_X64_MSR_CRASH_P2, 0);
 wrmsrl(HV_X64_MSR_CRASH_P3, pa);
 wrmsrl(HV_X64_MSR_CRASH_P4, size);





 wrmsrl(HV_X64_MSR_CRASH_CTL,
        (HV_CRASH_CTL_CRASH_NOTIFY | HV_CRASH_CTL_CRASH_NOTIFY_MSG));
}
