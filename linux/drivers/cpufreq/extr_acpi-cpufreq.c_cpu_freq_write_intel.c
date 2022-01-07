
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_pct_register {int dummy; } ;


 int INTEL_MSR_RANGE ;
 int MSR_IA32_PERF_CTL ;
 int rdmsr (int ,int,int) ;
 int wrmsr (int ,int,int) ;

__attribute__((used)) static void cpu_freq_write_intel(struct acpi_pct_register *not_used, u32 val)
{
 u32 lo, hi;

 rdmsr(MSR_IA32_PERF_CTL, lo, hi);
 lo = (lo & ~INTEL_MSR_RANGE) | (val & INTEL_MSR_RANGE);
 wrmsr(MSR_IA32_PERF_CTL, lo, hi);
}
