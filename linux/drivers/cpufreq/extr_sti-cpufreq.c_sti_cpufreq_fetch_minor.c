
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {int syscfg_eng; struct device* cpu; } ;


 int MINOR_ID_INDEX ;
 TYPE_1__ ddata ;
 int dev_err (struct device*,char*,int,...) ;
 int of_property_read_u32_index (struct device_node*,char*,int ,unsigned int*) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int sti_cpufreq_fetch_minor(void)
{
 struct device *dev = ddata.cpu;
 struct device_node *np = dev->of_node;
 unsigned int minor_offset;
 unsigned int minid;
 int ret;

 ret = of_property_read_u32_index(np, "st,syscfg-eng",
      MINOR_ID_INDEX, &minor_offset);
 if (ret) {
  dev_err(dev,
   "No minor number offset provided %pOF [%d]\n",
   np, ret);
  return ret;
 }

 ret = regmap_read(ddata.syscfg_eng, minor_offset, &minid);
 if (ret) {
  dev_err(dev,
   "Failed to read the minor number from syscon [%d]\n",
   ret);
  return ret;
 }

 return minid & 0xf;
}
