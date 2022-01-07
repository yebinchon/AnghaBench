
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {int syscfg; struct device* cpu; } ;


 int MAJOR_ID_INDEX ;
 unsigned int VERSION_SHIFT ;
 TYPE_1__ ddata ;
 int dev_err (struct device*,char*,int,...) ;
 int of_property_read_u32_index (struct device_node*,char*,int ,unsigned int*) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int sti_cpufreq_fetch_major(void) {
 struct device_node *np = ddata.cpu->of_node;
 struct device *dev = ddata.cpu;
 unsigned int major_offset;
 unsigned int socid;
 int ret;

 ret = of_property_read_u32_index(np, "st,syscfg",
      MAJOR_ID_INDEX, &major_offset);
 if (ret) {
  dev_err(dev, "No major number offset provided in %pOF [%d]\n",
   np, ret);
  return ret;
 }

 ret = regmap_read(ddata.syscfg, major_offset, &socid);
 if (ret) {
  dev_err(dev, "Failed to read major number from syscon [%d]\n",
   ret);
  return ret;
 }

 return ((socid >> VERSION_SHIFT) & 0xf) + 1;
}
