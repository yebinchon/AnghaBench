
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int acpi_pad_idle_cpus (unsigned long) ;
 int isolated_cpus_lock ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t acpi_pad_idlecpus_store(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 unsigned long num;
 if (kstrtoul(buf, 0, &num))
  return -EINVAL;
 mutex_lock(&isolated_cpus_lock);
 acpi_pad_idle_cpus(num);
 mutex_unlock(&isolated_cpus_lock);
 return count;
}
