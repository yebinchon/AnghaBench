
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property_entry {int dummy; } ;
struct platform_device {int dev; } ;


 int device_add_properties (int *,struct property_entry const*) ;

int platform_device_add_properties(struct platform_device *pdev,
       const struct property_entry *properties)
{
 return device_add_properties(&pdev->dev, properties);
}
