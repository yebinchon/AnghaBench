
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int PNV_THREAD_NAP ;
 int power7_idle_type (int ) ;

__attribute__((used)) static int nap_loop(struct cpuidle_device *dev,
   struct cpuidle_driver *drv,
   int index)
{
 power7_idle_type(PNV_THREAD_NAP);

 return index;
}
