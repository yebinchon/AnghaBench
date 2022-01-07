
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ag71xx {int napi; } ;


 int napi_schedule (int *) ;
 struct ag71xx* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ag71xx_oom_timer_handler(unsigned long data)
{
 struct net_device *dev = (struct net_device *) data;
 struct ag71xx *ag = netdev_priv(dev);

 napi_schedule(&ag->napi);
}
