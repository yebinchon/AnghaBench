
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int cpumap_print_to_pagebuf (int,char*,int *) ;
 int cstate_core_cpu_mask ;
 struct pmu cstate_core_pmu ;
 int cstate_pkg_cpu_mask ;
 struct pmu cstate_pkg_pmu ;
 struct pmu* dev_get_drvdata (struct device*) ;

__attribute__((used)) static ssize_t cstate_get_attr_cpumask(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct pmu *pmu = dev_get_drvdata(dev);

 if (pmu == &cstate_core_pmu)
  return cpumap_print_to_pagebuf(1, buf, &cstate_core_cpu_mask);
 else if (pmu == &cstate_pkg_pmu)
  return cpumap_print_to_pagebuf(1, buf, &cstate_pkg_cpu_mask);
 else
  return 0;
}
