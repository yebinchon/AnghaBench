
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int fscr; int hfscr; int lpcr_clear; int lpcr; } ;


 int PCR_MASK ;
 int SPRN_FSCR ;
 int SPRN_HFSCR ;
 int SPRN_LPCR ;
 int SPRN_LPID ;
 int SPRN_PCR ;
 scalar_t__ hv_mode ;
 int init_pmu_registers () ;
 int mfspr (int ) ;
 int mtspr (int ,int ) ;
 TYPE_1__ system_registers ;

__attribute__((used)) static void __restore_cpu_cpufeatures(void)
{
 u64 lpcr;
 lpcr = mfspr(SPRN_LPCR);
 lpcr |= system_registers.lpcr;
 lpcr &= ~system_registers.lpcr_clear;
 mtspr(SPRN_LPCR, lpcr);
 if (hv_mode) {
  mtspr(SPRN_LPID, 0);
  mtspr(SPRN_HFSCR, system_registers.hfscr);
  mtspr(SPRN_PCR, PCR_MASK);
 }
 mtspr(SPRN_FSCR, system_registers.fscr);

 if (init_pmu_registers)
  init_pmu_registers();
}
