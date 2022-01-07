
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int PAGE_SIZE ;
 int acpi_device_modalias (struct device*,char*,int) ;
 int of_device_modalias (struct device*,char*,int) ;
 int snprintf (char*,int,char*,char*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev, struct device_attribute *a,
        char *buf)
{
 struct platform_device *pdev = to_platform_device(dev);
 int len;

 len = of_device_modalias(dev, buf, PAGE_SIZE);
 if (len != -ENODEV)
  return len;

 len = acpi_device_modalias(dev, buf, PAGE_SIZE -1);
 if (len != -ENODEV)
  return len;

 len = snprintf(buf, PAGE_SIZE, "platform:%s\n", pdev->name);

 return (len >= PAGE_SIZE) ? (PAGE_SIZE - 1) : len;
}
