
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int dmi_ipmi_probe(struct platform_device *pdev)
{
 return -ENODEV;
}
