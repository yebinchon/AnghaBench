
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUID_EXT_MMFR0 ;
 int CPU_ARCH_ARMv3 ;
 int CPU_ARCH_ARMv4T ;
 int CPU_ARCH_ARMv6 ;
 int CPU_ARCH_ARMv7 ;
 int CPU_ARCH_UNKNOWN ;
 unsigned int read_cpuid_ext (int ) ;
 int read_cpuid_id () ;

__attribute__((used)) static int __get_cpu_architecture(void)
{
 int cpu_arch;

 if ((read_cpuid_id() & 0x0008f000) == 0) {
  cpu_arch = CPU_ARCH_UNKNOWN;
 } else if ((read_cpuid_id() & 0x0008f000) == 0x00007000) {
  cpu_arch = (read_cpuid_id() & (1 << 23)) ? CPU_ARCH_ARMv4T : CPU_ARCH_ARMv3;
 } else if ((read_cpuid_id() & 0x00080000) == 0x00000000) {
  cpu_arch = (read_cpuid_id() >> 16) & 7;
  if (cpu_arch)
   cpu_arch += CPU_ARCH_ARMv3;
 } else if ((read_cpuid_id() & 0x000f0000) == 0x000f0000) {


  unsigned int mmfr0 = read_cpuid_ext(CPUID_EXT_MMFR0);
  if ((mmfr0 & 0x0000000f) >= 0x00000003 ||
      (mmfr0 & 0x000000f0) >= 0x00000030)
   cpu_arch = CPU_ARCH_ARMv7;
  else if ((mmfr0 & 0x0000000f) == 0x00000002 ||
    (mmfr0 & 0x000000f0) == 0x00000020)
   cpu_arch = CPU_ARCH_ARMv6;
  else
   cpu_arch = CPU_ARCH_UNKNOWN;
 } else
  cpu_arch = CPU_ARCH_UNKNOWN;

 return cpu_arch;
}
