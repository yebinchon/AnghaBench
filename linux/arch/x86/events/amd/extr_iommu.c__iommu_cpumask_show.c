
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int cpumap_print_to_pagebuf (int,char*,int *) ;
 int iommu_cpumask ;

__attribute__((used)) static ssize_t _iommu_cpumask_show(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 return cpumap_print_to_pagebuf(1, buf, &iommu_cpumask);
}
