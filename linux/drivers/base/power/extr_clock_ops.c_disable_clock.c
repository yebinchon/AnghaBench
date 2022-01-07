
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 int IS_ERR (struct clk*) ;
 int clk_disable_unprepare (struct clk*) ;
 struct clk* clk_get (struct device*,char const*) ;
 int clk_put (struct clk*) ;
 int dev_info (struct device*,char*) ;

__attribute__((used)) static void disable_clock(struct device *dev, const char *con_id)
{
 struct clk *clk;

 clk = clk_get(dev, con_id);
 if (!IS_ERR(clk)) {
  clk_disable_unprepare(clk);
  clk_put(clk);
  dev_info(dev, "Runtime PM disabled, clock forced off.\n");
 }
}
