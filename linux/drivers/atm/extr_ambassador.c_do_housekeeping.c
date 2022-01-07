
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_5__ {int housekeeping; } ;
typedef TYPE_1__ amb_dev ;


 int HZ ;
 TYPE_1__* dev ;
 int fill_rx_pools (TYPE_1__*) ;
 TYPE_1__* from_timer (int ,struct timer_list*,int ) ;
 int housekeeping ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void do_housekeeping (struct timer_list *t) {
  amb_dev * dev = from_timer(dev, t, housekeeping);




  fill_rx_pools (dev);
  mod_timer(&dev->housekeeping, jiffies + 10*HZ);

  return;
}
