
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct nds32_pmu {int (* stop ) (struct nds32_pmu*) ;} ;


 int stub1 (struct nds32_pmu*) ;
 struct nds32_pmu* to_nds32_pmu (struct pmu*) ;

__attribute__((used)) static void nds32_pmu_disable(struct pmu *pmu)
{
 struct nds32_pmu *nds32_pmu = to_nds32_pmu(pmu);

 nds32_pmu->stop(nds32_pmu);
}
