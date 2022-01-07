
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imc_pmu_ref {int dummy; } ;


 int local_nest_imc_refc ;
 struct imc_pmu_ref* per_cpu (int ,int) ;

__attribute__((used)) static struct imc_pmu_ref *get_nest_pmu_ref(int cpu)
{
 return per_cpu(local_nest_imc_refc, cpu);
}
