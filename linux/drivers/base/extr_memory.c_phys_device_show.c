
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_block {int phys_device; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct memory_block* to_memory_block (struct device*) ;

__attribute__((used)) static ssize_t phys_device_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct memory_block *mem = to_memory_block(dev);
 return sprintf(buf, "%d\n", mem->phys_device);
}
