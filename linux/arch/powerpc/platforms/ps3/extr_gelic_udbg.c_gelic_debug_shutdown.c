
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbg ;


 int GELIC_BUS_ID ;
 int GELIC_DEVICE_ID ;
 scalar_t__ bus_addr ;
 int lv1_close_device (int ,int ) ;
 int unmap_dma_mem (int ,int ,scalar_t__,int) ;

__attribute__((used)) static void gelic_debug_shutdown(void)
{
 if (bus_addr)
  unmap_dma_mem(GELIC_BUS_ID, GELIC_DEVICE_ID,
         bus_addr, sizeof(dbg));
 lv1_close_device(GELIC_BUS_ID, GELIC_DEVICE_ID);
}
