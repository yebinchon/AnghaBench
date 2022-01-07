
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {unsigned int id; } ;
typedef int ssize_t ;


 int * phys_addr ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t
show_virtual_to_phys(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 unsigned int cpu=dev->id;
 return sprintf(buf, "%lx\n", phys_addr[cpu]);
}
