
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_pct_register {int dummy; } ;


 int MSR_AMD_PERF_CTL ;
 int wrmsr (int ,int ,int ) ;

__attribute__((used)) static void cpu_freq_write_amd(struct acpi_pct_register *not_used, u32 val)
{
 wrmsr(MSR_AMD_PERF_CTL, val, 0);
}
