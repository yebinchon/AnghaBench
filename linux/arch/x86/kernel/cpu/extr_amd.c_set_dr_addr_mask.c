
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_F16H_DR0_ADDR_MASK ;
 int MSR_F16H_DR1_ADDR_MASK ;
 int X86_FEATURE_BPEXT ;
 int boot_cpu_has (int ) ;
 int wrmsr (int ,unsigned long,int ) ;

void set_dr_addr_mask(unsigned long mask, int dr)
{
 if (!boot_cpu_has(X86_FEATURE_BPEXT))
  return;

 switch (dr) {
 case 0:
  wrmsr(MSR_F16H_DR0_ADDR_MASK, mask, 0);
  break;
 case 1:
 case 2:
 case 3:
  wrmsr(MSR_F16H_DR1_ADDR_MASK - 1 + dr, mask, 0);
  break;
 default:
  break;
 }
}
