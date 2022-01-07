
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int COUNTER_INFO_VERSION_CURRENT ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t kernel_version_show(struct device *dev,
       struct device_attribute *attr,
       char *page)
{
 return sprintf(page, "0x%x\n", COUNTER_INFO_VERSION_CURRENT);
}
