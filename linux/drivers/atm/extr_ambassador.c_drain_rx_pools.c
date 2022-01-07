
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int amb_dev ;


 int DBG_FLOW ;
 int DBG_POOL ;
 unsigned char NUM_RX_POOLS ;
 int PRINTD (int,char*,int *) ;
 int drain_rx_pool (int *,unsigned char) ;

__attribute__((used)) static void drain_rx_pools (amb_dev * dev) {
  unsigned char pool;

  PRINTD (DBG_FLOW|DBG_POOL, "drain_rx_pools %p", dev);

  for (pool = 0; pool < NUM_RX_POOLS; ++pool)
    drain_rx_pool (dev, pool);
}
