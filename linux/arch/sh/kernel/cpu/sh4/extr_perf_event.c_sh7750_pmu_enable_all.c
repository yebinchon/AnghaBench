
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_events; } ;


 int PMCR (int) ;
 int PMCR_PMEN ;
 int __raw_readw (int ) ;
 int __raw_writew (int,int ) ;
 TYPE_1__ sh7750_pmu ;

__attribute__((used)) static void sh7750_pmu_enable_all(void)
{
 int i;

 for (i = 0; i < sh7750_pmu.num_events; i++)
  __raw_writew(__raw_readw(PMCR(i)) | PMCR_PMEN, PMCR(i));
}
