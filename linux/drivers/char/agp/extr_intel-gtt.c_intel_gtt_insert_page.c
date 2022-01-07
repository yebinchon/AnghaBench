
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int dma_addr_t ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* chipset_flush ) () ;int (* write_entry ) (int ,unsigned int,unsigned int) ;} ;


 TYPE_2__ intel_private ;
 int stub1 (int ,unsigned int,unsigned int) ;
 int stub2 () ;

void intel_gtt_insert_page(dma_addr_t addr,
      unsigned int pg,
      unsigned int flags)
{
 intel_private.driver->write_entry(addr, pg, flags);
 if (intel_private.driver->chipset_flush)
  intel_private.driver->chipset_flush();
}
