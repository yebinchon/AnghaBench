
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bcma_drv_cc {TYPE_1__* core; } ;
struct TYPE_4__ {int id; } ;
struct bcma_bus {TYPE_2__ chipinfo; } ;
struct TYPE_3__ {struct bcma_bus* bus; } ;



 int bcma_pmu2_pll_init0 (struct bcma_drv_cc*,int) ;
 int bcma_pmu_xtalfreq (struct bcma_drv_cc*) ;

__attribute__((used)) static void bcma_pmu_pll_init(struct bcma_drv_cc *cc)
{
 struct bcma_bus *bus = cc->core->bus;
 u32 xtalfreq = bcma_pmu_xtalfreq(cc);

 switch (bus->chipinfo.id) {
 case 128:
  if (xtalfreq == 0)
   xtalfreq = 20000;
  bcma_pmu2_pll_init0(cc, xtalfreq);
  break;
 }
}
