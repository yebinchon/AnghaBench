
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device_attribute {int dummy; } ;
struct device {unsigned int id; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int EPB_MASK ;
 int MAX_EPB ;
 int MSR_IA32_ENERGY_PERF_BIAS ;
 int __sysfs_match_string (int ,int ,char const*) ;
 int* energ_perf_values ;
 int energy_perf_strings ;
 scalar_t__ kstrtou64 (char const*,int ,int*) ;
 int rdmsrl_on_cpu (unsigned int,int ,int*) ;
 int wrmsrl_on_cpu (unsigned int,int ,int) ;

__attribute__((used)) static ssize_t energy_perf_bias_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 unsigned int cpu = dev->id;
 u64 epb, val;
 int ret;

 ret = __sysfs_match_string(energy_perf_strings,
       ARRAY_SIZE(energy_perf_strings), buf);
 if (ret >= 0)
  val = energ_perf_values[ret];
 else if (kstrtou64(buf, 0, &val) || val > MAX_EPB)
  return -EINVAL;

 ret = rdmsrl_on_cpu(cpu, MSR_IA32_ENERGY_PERF_BIAS, &epb);
 if (ret < 0)
  return ret;

 ret = wrmsrl_on_cpu(cpu, MSR_IA32_ENERGY_PERF_BIAS,
       (epb & ~EPB_MASK) | val);
 if (ret < 0)
  return ret;

 return count;
}
