
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct inet6_ifaddr {TYPE_1__* idev; } ;
struct TYPE_2__ {struct net_device* dev; } ;


 unsigned long NETDEV_DOWN ;
 int NOTIFY_DONE ;
 int sfe_ipv6_destroy_all_rules_for_dev (struct net_device*) ;

__attribute__((used)) static int fast_classifier_inet6_event(struct notifier_block *this, unsigned long event, void *ptr)
{
 struct net_device *dev = ((struct inet6_ifaddr *)ptr)->idev->dev;

 if (dev && (event == NETDEV_DOWN)) {
  sfe_ipv6_destroy_all_rules_for_dev(dev);
 }

 return NOTIFY_DONE;
}
