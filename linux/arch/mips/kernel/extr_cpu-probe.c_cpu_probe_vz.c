
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_mips {int dummy; } ;


 scalar_t__ cpu_has_guestctl1 ;
 int cpu_probe_gtoffset (struct cpuinfo_mips*) ;
 int cpu_probe_guestctl0 (struct cpuinfo_mips*) ;
 int cpu_probe_guestctl1 (struct cpuinfo_mips*) ;
 int decode_guest_configs (struct cpuinfo_mips*) ;

__attribute__((used)) static inline void cpu_probe_vz(struct cpuinfo_mips *c)
{
 cpu_probe_guestctl0(c);
 if (cpu_has_guestctl1)
  cpu_probe_guestctl1(c);

 cpu_probe_gtoffset(c);

 decode_guest_configs(c);
}
