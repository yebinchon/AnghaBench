
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 struct clk cpu_clk ;

struct clk *clk_get(struct device *dev, const char *id)
{
 return &cpu_clk;
}
