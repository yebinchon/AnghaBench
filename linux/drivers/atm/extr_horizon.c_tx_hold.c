
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int tx_queue; } ;
typedef TYPE_1__ hrz_dev ;


 int DBG_TX ;
 int PRINTD (int ,char*,TYPE_1__*,...) ;
 int current ;
 scalar_t__ signal_pending (int ) ;
 int test_and_set_bit (int ,int *) ;
 int tx_busy ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int tx_hold (hrz_dev * dev) {
  PRINTD (DBG_TX, "sleeping at tx lock %p %lu", dev, dev->flags);
  wait_event_interruptible(dev->tx_queue, (!test_and_set_bit(tx_busy, &dev->flags)));
  PRINTD (DBG_TX, "woken at tx lock %p %lu", dev, dev->flags);
  if (signal_pending (current))
    return -1;
  PRINTD (DBG_TX, "set tx_busy for dev %p", dev);
  return 0;
}
