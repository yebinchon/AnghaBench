
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CPU_ARCH_ARMv6 ;
 int CR_U ;
 scalar_t__ cpu_architecture () ;
 int get_cr () ;

__attribute__((used)) static bool cpu_is_v6_unaligned(void)
{
 return cpu_architecture() >= CPU_ARCH_ARMv6 && get_cr() & CR_U;
}
