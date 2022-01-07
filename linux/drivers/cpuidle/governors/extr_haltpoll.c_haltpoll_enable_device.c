
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {scalar_t__ poll_limit_ns; } ;



__attribute__((used)) static int haltpoll_enable_device(struct cpuidle_driver *drv,
      struct cpuidle_device *dev)
{
 dev->poll_limit_ns = 0;

 return 0;
}
