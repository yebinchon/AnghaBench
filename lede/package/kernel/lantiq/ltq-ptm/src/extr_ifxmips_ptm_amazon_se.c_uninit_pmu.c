
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSL_DFE_PMU_SETUP (int ) ;
 int IFX_PMU_DISABLE ;
 int PPE_EMA_PMU_SETUP (int ) ;
 int PPE_SLL01_PMU_SETUP (int ) ;
 int PPE_TC_PMU_SETUP (int ) ;
 int PPE_TPE_PMU_SETUP (int ) ;

__attribute__((used)) static inline void uninit_pmu(void)
{
    PPE_SLL01_PMU_SETUP(IFX_PMU_DISABLE);
    PPE_TC_PMU_SETUP(IFX_PMU_DISABLE);
    PPE_EMA_PMU_SETUP(IFX_PMU_DISABLE);

    PPE_TPE_PMU_SETUP(IFX_PMU_DISABLE);
    DSL_DFE_PMU_SETUP(IFX_PMU_DISABLE);

}
