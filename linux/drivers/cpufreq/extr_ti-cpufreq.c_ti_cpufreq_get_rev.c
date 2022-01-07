
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ti_cpufreq_data {TYPE_1__* soc_data; int syscon; struct device* cpu_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int rev_offset; } ;


 int BIT (int) ;
 int REVISION_MASK ;
 int REVISION_SHIFT ;
 int dev_err (struct device*,char*,int) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int ti_cpufreq_get_rev(struct ti_cpufreq_data *opp_data,
         u32 *revision_value)
{
 struct device *dev = opp_data->cpu_dev;
 u32 revision;
 int ret;

 ret = regmap_read(opp_data->syscon, opp_data->soc_data->rev_offset,
     &revision);
 if (ret) {
  dev_err(dev,
   "Failed to read the revision number from syscon: %d\n",
   ret);
  return ret;
 }

 *revision_value = BIT((revision >> REVISION_SHIFT) & REVISION_MASK);

 return 0;
}
