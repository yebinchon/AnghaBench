
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int XTENSA_PMU_PM (int) ;
 int get_er (int ) ;

__attribute__((used)) static inline uint32_t xtensa_pmu_read_counter(int idx)
{
 return get_er(XTENSA_PMU_PM(idx));
}
