
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_pct_register {int dummy; } ;


 int MSR_IA32_PERF_CTL ;
 int rdmsr (int ,int ,int ) ;

__attribute__((used)) static u32 cpu_freq_read_intel(struct acpi_pct_register *not_used)
{
 u32 val, dummy;

 rdmsr(MSR_IA32_PERF_CTL, val, dummy);
 return val;
}
