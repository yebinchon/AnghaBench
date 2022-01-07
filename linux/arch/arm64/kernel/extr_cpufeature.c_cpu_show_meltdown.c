
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ __meltdown_safe ;
 scalar_t__ arm64_kernel_unmapped_at_el0 () ;
 int sprintf (char*,char*) ;

ssize_t cpu_show_meltdown(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 if (__meltdown_safe)
  return sprintf(buf, "Not affected\n");

 if (arm64_kernel_unmapped_at_el0())
  return sprintf(buf, "Mitigation: PTI\n");

 return sprintf(buf, "Vulnerable\n");
}
