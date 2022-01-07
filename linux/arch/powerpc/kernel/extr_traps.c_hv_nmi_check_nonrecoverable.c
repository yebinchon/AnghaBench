
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long nip; int msr; } ;


 int MSR_HV ;
 int MSR_PR ;
 int MSR_RI ;
 scalar_t__ _stext ;
 unsigned long end_real_trampolines ;
 unsigned long end_virt_trampolines ;
 unsigned long start_real_trampolines ;
 unsigned long start_virt_trampolines ;

void hv_nmi_check_nonrecoverable(struct pt_regs *regs)
{
}
