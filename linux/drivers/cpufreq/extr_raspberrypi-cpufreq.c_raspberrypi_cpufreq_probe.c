
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int PTR_ERR_OR_ZERO (int ) ;
 scalar_t__ RASPBERRYPI_FREQ_INTERVAL ;
 int ULONG_MAX ;
 struct clk* clk_get (struct device*,int *) ;
 int clk_put (struct clk*) ;
 int clk_round_rate (struct clk*,int ) ;
 int cpufreq_dt ;
 int dev_err (struct device*,char*,...) ;
 int dev_pm_opp_add (struct device*,unsigned long,int ) ;
 int dev_pm_opp_remove_all_dynamic (struct device*) ;
 struct device* get_cpu_device (int ) ;
 int platform_device_register_simple (char*,int,int *,int ) ;
 int pr_err (char*) ;
 unsigned long roundup (int ,scalar_t__) ;

__attribute__((used)) static int raspberrypi_cpufreq_probe(struct platform_device *pdev)
{
 struct device *cpu_dev;
 unsigned long min, max;
 unsigned long rate;
 struct clk *clk;
 int ret;

 cpu_dev = get_cpu_device(0);
 if (!cpu_dev) {
  pr_err("Cannot get CPU for cpufreq driver\n");
  return -ENODEV;
 }

 clk = clk_get(cpu_dev, ((void*)0));
 if (IS_ERR(clk)) {
  dev_err(cpu_dev, "Cannot get clock for CPU0\n");
  return PTR_ERR(clk);
 }





 min = roundup(clk_round_rate(clk, 0), RASPBERRYPI_FREQ_INTERVAL);
 max = roundup(clk_round_rate(clk, ULONG_MAX), RASPBERRYPI_FREQ_INTERVAL);
 clk_put(clk);

 for (rate = min; rate <= max; rate += RASPBERRYPI_FREQ_INTERVAL) {
  ret = dev_pm_opp_add(cpu_dev, rate, 0);
  if (ret)
   goto remove_opp;
 }

 cpufreq_dt = platform_device_register_simple("cpufreq-dt", -1, ((void*)0), 0);
 ret = PTR_ERR_OR_ZERO(cpufreq_dt);
 if (ret) {
  dev_err(cpu_dev, "Failed to create platform device, %d\n", ret);
  goto remove_opp;
 }

 return 0;

remove_opp:
 dev_pm_opp_remove_all_dynamic(cpu_dev);

 return ret;
}
