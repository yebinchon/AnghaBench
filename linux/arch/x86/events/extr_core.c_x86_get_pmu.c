
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;


 struct pmu pmu ;

struct pmu *x86_get_pmu(void)
{
 return &pmu;
}
