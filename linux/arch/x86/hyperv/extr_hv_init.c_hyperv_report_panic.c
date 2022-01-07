
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u64 ;
struct pt_regs {long ip; long ax; long sp; } ;


 long HV_CRASH_CTL_CRASH_NOTIFY ;
 int HV_X64_MSR_CRASH_CTL ;
 int HV_X64_MSR_CRASH_P0 ;
 int HV_X64_MSR_CRASH_P1 ;
 int HV_X64_MSR_CRASH_P2 ;
 int HV_X64_MSR_CRASH_P3 ;
 int HV_X64_MSR_CRASH_P4 ;
 int HV_X64_MSR_GUEST_OS_ID ;
 int rdmsrl (int ,long) ;
 int wrmsrl (int ,long) ;

void hyperv_report_panic(struct pt_regs *regs, long err)
{
 static bool panic_reported;
 u64 guest_id;






 if (panic_reported)
  return;
 panic_reported = 1;

 rdmsrl(HV_X64_MSR_GUEST_OS_ID, guest_id);

 wrmsrl(HV_X64_MSR_CRASH_P0, err);
 wrmsrl(HV_X64_MSR_CRASH_P1, guest_id);
 wrmsrl(HV_X64_MSR_CRASH_P2, regs->ip);
 wrmsrl(HV_X64_MSR_CRASH_P3, regs->ax);
 wrmsrl(HV_X64_MSR_CRASH_P4, regs->sp);




 wrmsrl(HV_X64_MSR_CRASH_CTL, HV_CRASH_CTL_CRASH_NOTIFY);
}
