
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmu {int dummy; } ;
struct TYPE_2__ {int hpcr; } ;


 int HPCR ;
 int cpwcr (int ,int ) ;
 TYPE_1__ csky_pmu ;

__attribute__((used)) static void csky_pmu_enable(struct pmu *pmu)
{
 cpwcr(HPCR, csky_pmu.hpcr);
}
