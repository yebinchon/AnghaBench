
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuidle_driver {int dummy; } ;
struct cpuidle_device {int dummy; } ;


 int clps711x_halt ;
 int writel (int,int ) ;

__attribute__((used)) static int clps711x_cpuidle_halt(struct cpuidle_device *dev,
     struct cpuidle_driver *drv, int index)
{
 writel(0xaa, clps711x_halt);

 return index;
}
