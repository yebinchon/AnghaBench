
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int node_read_cpumap (struct device*,int,char*) ;

__attribute__((used)) static inline ssize_t node_read_cpumask(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 return node_read_cpumap(dev, 0, buf);
}
