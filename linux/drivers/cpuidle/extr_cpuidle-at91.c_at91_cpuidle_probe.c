
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int at91_idle_driver ;
 void* at91_standby ;
 int cpuidle_register (int *,int *) ;

__attribute__((used)) static int at91_cpuidle_probe(struct platform_device *dev)
{
 at91_standby = (void *)(dev->dev.platform_data);

 return cpuidle_register(&at91_idle_driver, ((void*)0));
}
