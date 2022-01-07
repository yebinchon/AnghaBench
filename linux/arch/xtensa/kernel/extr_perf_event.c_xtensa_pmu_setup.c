
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int XCHAL_NUM_PERF_COUNTERS ;
 int XTENSA_PMU_PMCTRL (unsigned int) ;
 int XTENSA_PMU_PMG ;
 int XTENSA_PMU_PMSTAT (unsigned int) ;
 int get_er (int ) ;
 int set_er (int ,int ) ;

__attribute__((used)) static int xtensa_pmu_setup(int cpu)
{
 unsigned i;

 set_er(0, XTENSA_PMU_PMG);
 for (i = 0; i < XCHAL_NUM_PERF_COUNTERS; ++i) {
  set_er(0, XTENSA_PMU_PMCTRL(i));
  set_er(get_er(XTENSA_PMU_PMSTAT(i)), XTENSA_PMU_PMSTAT(i));
 }
 return 0;
}
