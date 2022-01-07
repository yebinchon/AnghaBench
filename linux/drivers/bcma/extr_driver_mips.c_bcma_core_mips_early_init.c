
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcma_drv_mips {int early_setup_done; TYPE_1__* core; } ;
struct bcma_bus {int drv_cc; } ;
struct TYPE_2__ {struct bcma_bus* bus; } ;


 int bcma_chipco_serial_init (int *) ;
 int bcma_core_mips_nvram_init (struct bcma_drv_mips*) ;

void bcma_core_mips_early_init(struct bcma_drv_mips *mcore)
{
 struct bcma_bus *bus = mcore->core->bus;

 if (mcore->early_setup_done)
  return;

 bcma_chipco_serial_init(&bus->drv_cc);
 bcma_core_mips_nvram_init(mcore);

 mcore->early_setup_done = 1;
}
