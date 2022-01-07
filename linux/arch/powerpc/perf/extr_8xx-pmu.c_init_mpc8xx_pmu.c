
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PERF_TYPE_RAW ;
 int SPRN_CMPA ;
 int SPRN_COUNTA ;
 int SPRN_ICTRL ;
 int mpc8xx_pmu ;
 int mtspr (int ,int) ;
 int perf_pmu_register (int *,char*,int ) ;

__attribute__((used)) static int init_mpc8xx_pmu(void)
{
 mtspr(SPRN_ICTRL, 7);
 mtspr(SPRN_CMPA, 0);
 mtspr(SPRN_COUNTA, 0xffff);

 return perf_pmu_register(&mpc8xx_pmu, "cpu", PERF_TYPE_RAW);
}
