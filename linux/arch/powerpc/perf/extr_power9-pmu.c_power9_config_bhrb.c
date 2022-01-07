
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int POWER9_MMCRA_BHRB_MASK ;
 int SPRN_MMCRA ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;

__attribute__((used)) static void power9_config_bhrb(u64 pmu_bhrb_filter)
{
 pmu_bhrb_filter &= POWER9_MMCRA_BHRB_MASK;


 mtspr(SPRN_MMCRA, (mfspr(SPRN_MMCRA) | pmu_bhrb_filter));
}
