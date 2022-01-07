
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int init_vas_instance (struct platform_device*) ;

__attribute__((used)) static int vas_probe(struct platform_device *pdev)
{
 return init_vas_instance(pdev);
}
