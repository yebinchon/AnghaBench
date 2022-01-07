
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PPC_PMCTR (int) ;
 int __raw_readl (int ) ;

__attribute__((used)) static u64 sh4a_pmu_read(int idx)
{
 return __raw_readl(PPC_PMCTR(idx));
}
