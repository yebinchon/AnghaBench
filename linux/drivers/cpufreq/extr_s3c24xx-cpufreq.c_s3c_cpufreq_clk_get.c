
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 struct clk* clk_get (struct device*,char const*) ;
 int pr_err (char*,char const*) ;

struct clk *s3c_cpufreq_clk_get(struct device *dev, const char *name)
{
 struct clk *clk;

 clk = clk_get(dev, name);
 if (IS_ERR(clk))
  pr_err("failed to get clock '%s'\n", name);

 return clk;
}
