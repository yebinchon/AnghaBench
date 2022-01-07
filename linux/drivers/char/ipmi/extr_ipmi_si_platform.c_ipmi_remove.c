
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int ipmi_si_remove_by_dev (int *) ;

__attribute__((used)) static int ipmi_remove(struct platform_device *pdev)
{
 return ipmi_si_remove_by_dev(&pdev->dev);
}
