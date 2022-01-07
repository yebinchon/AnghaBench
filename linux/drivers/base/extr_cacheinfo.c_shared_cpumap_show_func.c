
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cpumask {int dummy; } ;
struct cacheinfo {struct cpumask shared_cpu_map; } ;
typedef int ssize_t ;


 int cpumap_print_to_pagebuf (int,char*,struct cpumask const*) ;
 struct cacheinfo* dev_get_drvdata (struct device*) ;

__attribute__((used)) static ssize_t shared_cpumap_show_func(struct device *dev, bool list, char *buf)
{
 struct cacheinfo *this_leaf = dev_get_drvdata(dev);
 const struct cpumask *mask = &this_leaf->shared_cpu_map;

 return cpumap_print_to_pagebuf(list, buf, mask);
}
