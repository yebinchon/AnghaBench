
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmu {scalar_t__ type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int cpumask_t ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 int amd_llc_active_mask ;
 TYPE_2__ amd_llc_pmu ;
 int amd_nb_active_mask ;
 TYPE_1__ amd_nb_pmu ;
 int cpumap_print_to_pagebuf (int,char*,int *) ;
 struct pmu* dev_get_drvdata (struct device*) ;

__attribute__((used)) static ssize_t amd_uncore_attr_show_cpumask(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 cpumask_t *active_mask;
 struct pmu *pmu = dev_get_drvdata(dev);

 if (pmu->type == amd_nb_pmu.type)
  active_mask = &amd_nb_active_mask;
 else if (pmu->type == amd_llc_pmu.type)
  active_mask = &amd_llc_active_mask;
 else
  return 0;

 return cpumap_print_to_pagebuf(1, buf, active_mask);
}
