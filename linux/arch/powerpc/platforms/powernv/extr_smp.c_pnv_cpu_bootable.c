
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_ARCH_207S ;
 scalar_t__ cpu_has_feature (int ) ;
 int smp_generic_cpu_bootable (unsigned int) ;

__attribute__((used)) static int pnv_cpu_bootable(unsigned int nr)
{






 if (cpu_has_feature(CPU_FTR_ARCH_207S))
  return 1;

 return smp_generic_cpu_bootable(nr);
}
