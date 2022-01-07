
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;


 int pmuint_rwlock ;
 int resume_local_counters () ;
 int write_unlock (int *) ;

__attribute__((used)) static void mipspmu_enable(struct pmu *pmu)
{



 resume_local_counters();
}
