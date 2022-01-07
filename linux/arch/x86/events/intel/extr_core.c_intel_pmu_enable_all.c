
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __intel_pmu_enable_all (int,int) ;

__attribute__((used)) static void intel_pmu_enable_all(int added)
{
 __intel_pmu_enable_all(added, 0);
}
