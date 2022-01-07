
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int XTENSA_PMU_PM (int) ;
 int set_er (int ,int ) ;

__attribute__((used)) static inline void xtensa_pmu_write_counter(int idx, uint32_t v)
{
 set_er(v, XTENSA_PMU_PM(idx));
}
