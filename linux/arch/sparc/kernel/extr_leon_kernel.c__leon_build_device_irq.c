
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int handle_simple_irq ;
 unsigned int leon_build_device_irq (unsigned int,int ,char*,int ) ;

__attribute__((used)) static unsigned int _leon_build_device_irq(struct platform_device *op,
        unsigned int real_irq)
{
 return leon_build_device_irq(real_irq, handle_simple_irq, "edge", 0);
}
