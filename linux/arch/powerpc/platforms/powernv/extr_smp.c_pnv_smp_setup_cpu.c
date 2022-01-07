
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PPC_BIT (int) ;
 int PVR_POWER9 ;
 int SPRN_HMEER ;
 int boot_cpuid ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 scalar_t__ pvr_version_is (int ) ;
 int xics_setup_cpu () ;
 scalar_t__ xive_enabled () ;
 int xive_smp_setup_cpu () ;

__attribute__((used)) static void pnv_smp_setup_cpu(int cpu)
{




 if (pvr_version_is(PVR_POWER9))
  mtspr(SPRN_HMEER, mfspr(SPRN_HMEER) | PPC_BIT(17));

 if (xive_enabled())
  xive_smp_setup_cpu();
 else if (cpu != boot_cpuid)
  xics_setup_cpu();
}
