
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sh_pmu ;

__attribute__((used)) static inline int sh_pmu_initialized(void)
{
 return !!sh_pmu;
}
