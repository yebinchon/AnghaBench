
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 struct clk* clk_get (int *,char*) ;
 unsigned long clk_get_rate (struct clk*) ;
 int clk_put (struct clk*) ;

__attribute__((used)) static int shoc_clk_verify_rate(struct clk *clk, unsigned long rate)
{
 struct clk *bclk = clk_get(((void*)0), "bus_clk");
 unsigned long bclk_rate = clk_get_rate(bclk);

 clk_put(bclk);

 if (rate > bclk_rate)
  return 1;
 if (rate > 66000000)
  return 1;

 return 0;
}
