
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int armada_370_xp_pmsu_idle_enter ;
 int cpu_suspend (unsigned long,int ) ;

__attribute__((used)) static int armada_370_xp_cpu_suspend(unsigned long deepidle)
{
 return cpu_suspend(deepidle, armada_370_xp_pmsu_idle_enter);
}
