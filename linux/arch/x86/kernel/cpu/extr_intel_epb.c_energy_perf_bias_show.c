
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device_attribute {int dummy; } ;
struct device {unsigned int id; } ;
typedef int ssize_t ;


 int MSR_IA32_ENERGY_PERF_BIAS ;
 int rdmsrl_on_cpu (unsigned int,int ,int *) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t energy_perf_bias_show(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 unsigned int cpu = dev->id;
 u64 epb;
 int ret;

 ret = rdmsrl_on_cpu(cpu, MSR_IA32_ENERGY_PERF_BIAS, &epb);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%llu\n", epb);
}
