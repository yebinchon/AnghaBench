
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_21__ {int limit; int start; } ;
struct TYPE_20__ {int limit; int start; } ;
struct TYPE_22__ {TYPE_4__ out; TYPE_3__ in; } ;
struct TYPE_18__ {int limit; int start; } ;
struct TYPE_19__ {TYPE_1__ ptrs; } ;
struct TYPE_16__ {TYPE_9__* rxq; TYPE_5__ txq; TYPE_2__ cq; } ;
typedef TYPE_10__ amb_dev ;
struct TYPE_17__ {scalar_t__ init_flags; TYPE_8__* rec_struct; void* txcom_end; void* txcom_start; void* tx_end; void* tx_start; void* command_end; void* command_start; } ;
typedef TYPE_11__ adap_talk_block ;
struct TYPE_24__ {int limit; int start; } ;
struct TYPE_23__ {int limit; int start; } ;
struct TYPE_26__ {int buffer_size; TYPE_7__ out; TYPE_6__ in; } ;
struct TYPE_25__ {int buffer_size; void* rx_end; void* rx_start; void* buffer_end; void* buffer_start; } ;


 int DBG_ERR ;
 int DBG_FLOW ;
 int DBG_INIT ;
 int ETIMEDOUT ;
 unsigned char NUM_RX_POOLS ;
 int PRINTD (int,char*,...) ;
 int amb_mem ;
 void* bus_addr (int ) ;
 int cpu_to_be32 (int ) ;
 int doorbell ;
 int msleep (int) ;
 unsigned long msleep_interruptible (unsigned long) ;
 int offsetof (int ,int ) ;
 scalar_t__ rd_plain (TYPE_10__*,int ) ;
 int virt_to_bus (TYPE_11__*) ;
 int wr_mem (TYPE_10__*,int ,int ) ;

__attribute__((used)) static int amb_talk(amb_dev *dev)
{
  adap_talk_block a;
  unsigned char pool;
  unsigned long timeout;

  PRINTD (DBG_FLOW, "amb_talk %p", dev);

  a.command_start = bus_addr (dev->cq.ptrs.start);
  a.command_end = bus_addr (dev->cq.ptrs.limit);
  a.tx_start = bus_addr (dev->txq.in.start);
  a.tx_end = bus_addr (dev->txq.in.limit);
  a.txcom_start = bus_addr (dev->txq.out.start);
  a.txcom_end = bus_addr (dev->txq.out.limit);

  for (pool = 0; pool < NUM_RX_POOLS; ++pool) {

    a.rec_struct[pool].buffer_start = bus_addr (dev->rxq[pool].in.start);
    a.rec_struct[pool].buffer_end = bus_addr (dev->rxq[pool].in.limit);
    a.rec_struct[pool].rx_start = bus_addr (dev->rxq[pool].out.start);
    a.rec_struct[pool].rx_end = bus_addr (dev->rxq[pool].out.limit);
    a.rec_struct[pool].buffer_size = cpu_to_be32 (dev->rxq[pool].buffer_size);
  }







  wr_mem (dev, offsetof(amb_mem, doorbell), virt_to_bus (&a));


  msleep(2200);

  timeout = 500;
  while (rd_plain (dev, offsetof(amb_mem, doorbell)))
    if (timeout) {
      timeout = msleep_interruptible(timeout);
    } else {
      PRINTD (DBG_INIT|DBG_ERR, "adapter init timed out");
      return -ETIMEDOUT;
    }

  return 0;
}
