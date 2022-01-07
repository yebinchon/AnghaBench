
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct generic_pm_domain {int dummy; } ;
struct device {int dummy; } ;


 int pm_clk_destroy (struct device*) ;
 int pm_clk_no_clocks (struct device*) ;

__attribute__((used)) static void r9a06g032_detach_dev(struct generic_pm_domain *unused, struct device *dev)
{
 if (!pm_clk_no_clocks(dev))
  pm_clk_destroy(dev);
}
