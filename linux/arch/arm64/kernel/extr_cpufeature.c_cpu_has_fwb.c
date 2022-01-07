
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct arm64_cpu_capabilities {int dummy; } ;


 int SYS_CLIDR_EL1 ;
 int WARN_ON (int) ;
 int read_sysreg_s (int ) ;

__attribute__((used)) static void cpu_has_fwb(const struct arm64_cpu_capabilities *__unused)
{
 u64 val = read_sysreg_s(SYS_CLIDR_EL1);


 WARN_ON(val & (7 << 27 | 7 << 21));
}
