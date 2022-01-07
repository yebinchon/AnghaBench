
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;


 int pause_local_counters () ;
 int pmuint_rwlock ;
 int write_lock (int *) ;

__attribute__((used)) static void mipspmu_disable(struct pmu *pmu)
{
 pause_local_counters();



}
