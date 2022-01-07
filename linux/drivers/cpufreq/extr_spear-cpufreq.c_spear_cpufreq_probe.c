
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct property {int length; int * value; } ;
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;
struct cpufreq_frequency_table {int frequency; } ;
typedef int __be32 ;
struct TYPE_2__ {int clk; struct cpufreq_frequency_table* freq_tbl; int transition_latency; } ;


 int CPUFREQ_ETERNAL ;
 int CPUFREQ_TABLE_END ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int be32_to_cpup (int ) ;
 int clk_get (int *,char*) ;
 int clk_put (int ) ;
 int cpufreq_register_driver (int *) ;
 struct cpufreq_frequency_table* kcalloc (int,int,int ) ;
 int kfree (struct cpufreq_frequency_table*) ;
 struct device_node* of_cpu_device_node_get (int ) ;
 struct property* of_find_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;
 int pr_err (char*,...) ;
 TYPE_1__ spear_cpufreq ;
 int spear_cpufreq_driver ;

__attribute__((used)) static int spear_cpufreq_probe(struct platform_device *pdev)
{
 struct device_node *np;
 const struct property *prop;
 struct cpufreq_frequency_table *freq_tbl;
 const __be32 *val;
 int cnt, i, ret;

 np = of_cpu_device_node_get(0);
 if (!np) {
  pr_err("No cpu node found\n");
  return -ENODEV;
 }

 if (of_property_read_u32(np, "clock-latency",
    &spear_cpufreq.transition_latency))
  spear_cpufreq.transition_latency = CPUFREQ_ETERNAL;

 prop = of_find_property(np, "cpufreq_tbl", ((void*)0));
 if (!prop || !prop->value) {
  pr_err("Invalid cpufreq_tbl\n");
  ret = -ENODEV;
  goto out_put_node;
 }

 cnt = prop->length / sizeof(u32);
 val = prop->value;

 freq_tbl = kcalloc(cnt + 1, sizeof(*freq_tbl), GFP_KERNEL);
 if (!freq_tbl) {
  ret = -ENOMEM;
  goto out_put_node;
 }

 for (i = 0; i < cnt; i++)
  freq_tbl[i].frequency = be32_to_cpup(val++);

 freq_tbl[i].frequency = CPUFREQ_TABLE_END;

 spear_cpufreq.freq_tbl = freq_tbl;

 of_node_put(np);

 spear_cpufreq.clk = clk_get(((void*)0), "cpu_clk");
 if (IS_ERR(spear_cpufreq.clk)) {
  pr_err("Unable to get CPU clock\n");
  ret = PTR_ERR(spear_cpufreq.clk);
  goto out_put_mem;
 }

 ret = cpufreq_register_driver(&spear_cpufreq_driver);
 if (!ret)
  return 0;

 pr_err("failed register driver: %d\n", ret);
 clk_put(spear_cpufreq.clk);

out_put_mem:
 kfree(freq_tbl);
 return ret;

out_put_node:
 of_node_put(np);
 return ret;
}
