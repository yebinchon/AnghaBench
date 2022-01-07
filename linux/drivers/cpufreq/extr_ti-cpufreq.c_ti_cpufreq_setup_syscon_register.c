
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_cpufreq_data {int syscon; struct device_node* opp_node; struct device* cpu_dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int ti_cpufreq_setup_syscon_register(struct ti_cpufreq_data *opp_data)
{
 struct device *dev = opp_data->cpu_dev;
 struct device_node *np = opp_data->opp_node;

 opp_data->syscon = syscon_regmap_lookup_by_phandle(np,
       "syscon");
 if (IS_ERR(opp_data->syscon)) {
  dev_err(dev,
   "\"syscon\" is missing, cannot use OPPv2 table.\n");
  return PTR_ERR(opp_data->syscon);
 }

 return 0;
}
