
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bcma_drv_mips {TYPE_1__* core; } ;
struct TYPE_4__ {int capabilities; } ;
struct bcma_bus {TYPE_2__ drv_cc; } ;
struct TYPE_3__ {struct bcma_bus* bus; } ;


 int BCMA_CC_CAP_PMU ;
 int bcma_err (struct bcma_bus*,char*) ;
 int bcma_pmu_get_cpu_clock (TYPE_2__*) ;

u32 bcma_cpu_clock(struct bcma_drv_mips *mcore)
{
 struct bcma_bus *bus = mcore->core->bus;

 if (bus->drv_cc.capabilities & BCMA_CC_CAP_PMU)
  return bcma_pmu_get_cpu_clock(&bus->drv_cc);

 bcma_err(bus, "No PMU available, need this to get the cpu clock\n");
 return 0;
}
