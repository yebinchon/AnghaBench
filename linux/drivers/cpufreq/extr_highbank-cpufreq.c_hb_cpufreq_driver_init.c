
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device_info {char* name; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;
struct clk {int dummy; } ;


 int ENODEV ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* clk_get (struct device*,int *) ;
 int clk_notifier_register (struct clk*,int *) ;
 struct device* get_cpu_device (int ) ;
 int hb_cpufreq_clk_nb ;
 int of_machine_is_compatible (char*) ;
 struct device_node* of_node_get (int ) ;
 int of_node_put (struct device_node*) ;
 int platform_device_register_full (struct platform_device_info*) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int hb_cpufreq_driver_init(void)
{
 struct platform_device_info devinfo = { .name = "cpufreq-dt", };
 struct device *cpu_dev;
 struct clk *cpu_clk;
 struct device_node *np;
 int ret;

 if ((!of_machine_is_compatible("calxeda,highbank")) &&
  (!of_machine_is_compatible("calxeda,ecx-2000")))
  return -ENODEV;

 cpu_dev = get_cpu_device(0);
 if (!cpu_dev) {
  pr_err("failed to get highbank cpufreq device\n");
  return -ENODEV;
 }

 np = of_node_get(cpu_dev->of_node);
 if (!np) {
  pr_err("failed to find highbank cpufreq node\n");
  return -ENOENT;
 }

 cpu_clk = clk_get(cpu_dev, ((void*)0));
 if (IS_ERR(cpu_clk)) {
  ret = PTR_ERR(cpu_clk);
  pr_err("failed to get cpu0 clock: %d\n", ret);
  goto out_put_node;
 }

 ret = clk_notifier_register(cpu_clk, &hb_cpufreq_clk_nb);
 if (ret) {
  pr_err("failed to register clk notifier: %d\n", ret);
  goto out_put_node;
 }


 platform_device_register_full(&devinfo);

out_put_node:
 of_node_put(np);
 return ret;
}
