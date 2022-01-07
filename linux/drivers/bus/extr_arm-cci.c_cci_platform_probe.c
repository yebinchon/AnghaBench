
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int ENODEV ;
 int arm_cci_auxdata ;
 int cci_probed () ;
 int of_platform_populate (int ,int *,int ,TYPE_1__*) ;

__attribute__((used)) static int cci_platform_probe(struct platform_device *pdev)
{
 if (!cci_probed())
  return -ENODEV;

 return of_platform_populate(pdev->dev.of_node, ((void*)0),
        arm_cci_auxdata, &pdev->dev);
}
