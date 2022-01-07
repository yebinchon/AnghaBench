
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int NR_CPUS ;
 scalar_t__ PAGE_SIZE ;
 int snprintf (char*,scalar_t__,char*,int) ;

__attribute__((used)) static ssize_t print_cpus_kernel_max(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 int n = snprintf(buf, PAGE_SIZE-2, "%d\n", NR_CPUS - 1);
 return n;
}
