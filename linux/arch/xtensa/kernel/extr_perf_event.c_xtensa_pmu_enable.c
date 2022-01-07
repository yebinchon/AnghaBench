
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;


 int XTENSA_PMU_PMG ;
 int XTENSA_PMU_PMG_PMEN ;
 int get_er (int ) ;
 int set_er (int,int ) ;

__attribute__((used)) static void xtensa_pmu_enable(struct pmu *pmu)
{
 set_er(get_er(XTENSA_PMU_PMG) | XTENSA_PMU_PMG_PMEN, XTENSA_PMU_PMG);
}
