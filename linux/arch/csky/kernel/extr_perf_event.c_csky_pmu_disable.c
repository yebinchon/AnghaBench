
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;


 int BIT (int) ;
 int HPCR ;
 int cpwcr (int ,int ) ;

__attribute__((used)) static void csky_pmu_disable(struct pmu *pmu)
{
 cpwcr(HPCR, BIT(1));
}
