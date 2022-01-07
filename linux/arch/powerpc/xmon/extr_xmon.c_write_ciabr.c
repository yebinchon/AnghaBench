
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_FTR_ARCH_207S ;
 int CPU_FTR_HVMODE ;
 int SPRN_CIABR ;
 scalar_t__ cpu_has_feature (int ) ;
 int mtspr (int ,unsigned long) ;
 int plpar_set_ciabr (unsigned long) ;

__attribute__((used)) static void write_ciabr(unsigned long ciabr)
{
 if (!cpu_has_feature(CPU_FTR_ARCH_207S))
  return;

 if (cpu_has_feature(CPU_FTR_HVMODE)) {
  mtspr(SPRN_CIABR, ciabr);
  return;
 }
 plpar_set_ciabr(ciabr);
}
