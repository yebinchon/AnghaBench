
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int dummy; } ;
struct device {int dummy; } ;
typedef struct regulator clk ;


 int ENODEV ;
 int EPROBE_DEFER ;
 int PTR_ERR_OR_ZERO (struct regulator*) ;
 struct regulator* clk_get (struct device*,int *) ;
 int clk_put (struct regulator*) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,int) ;
 char* find_supply_name (struct device*) ;
 struct device* get_cpu_device (int ) ;
 int pr_err (char*) ;
 struct regulator* regulator_get_optional (struct device*,char const*) ;
 int regulator_put (struct regulator*) ;

__attribute__((used)) static int resources_available(void)
{
 struct device *cpu_dev;
 struct regulator *cpu_reg;
 struct clk *cpu_clk;
 int ret = 0;
 const char *name;

 cpu_dev = get_cpu_device(0);
 if (!cpu_dev) {
  pr_err("failed to get cpu0 device\n");
  return -ENODEV;
 }

 cpu_clk = clk_get(cpu_dev, ((void*)0));
 ret = PTR_ERR_OR_ZERO(cpu_clk);
 if (ret) {




  if (ret == -EPROBE_DEFER)
   dev_dbg(cpu_dev, "clock not ready, retry\n");
  else
   dev_err(cpu_dev, "failed to get clock: %d\n", ret);

  return ret;
 }

 clk_put(cpu_clk);

 name = find_supply_name(cpu_dev);

 if (!name)
  return 0;

 cpu_reg = regulator_get_optional(cpu_dev, name);
 ret = PTR_ERR_OR_ZERO(cpu_reg);
 if (ret) {




  if (ret == -EPROBE_DEFER)
   dev_dbg(cpu_dev, "cpu0 regulator not ready, retry\n");
  else
   dev_dbg(cpu_dev, "no regulator for cpu0: %d\n", ret);

  return ret;
 }

 regulator_put(cpu_reg);
 return 0;
}
