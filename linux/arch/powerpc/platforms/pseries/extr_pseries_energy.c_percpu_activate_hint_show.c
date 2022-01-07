
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int get_best_energy_data (struct device*,char*,int) ;

__attribute__((used)) static ssize_t percpu_activate_hint_show(struct device *dev,
   struct device_attribute *attr, char *page)
{
 return get_best_energy_data(dev, page, 1);
}
