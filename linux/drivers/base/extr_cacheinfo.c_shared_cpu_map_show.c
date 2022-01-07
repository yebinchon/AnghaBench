
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int shared_cpumap_show_func (struct device*,int,char*) ;

__attribute__((used)) static ssize_t shared_cpu_map_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 return shared_cpumap_show_func(dev, 0, buf);
}
