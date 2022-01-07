
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* clk_get (int *,char*) ;
 int clk_put (struct clk*) ;
 int clk_set_rate (struct clk*,int) ;

__attribute__((used)) static int apsh4a3a_clk_init(void)
{
 struct clk *clk;
 int ret;

 clk = clk_get(((void*)0), "extal");
 if (IS_ERR(clk))
  return PTR_ERR(clk);
 ret = clk_set_rate(clk, 33333000);
 clk_put(clk);

 return ret;
}
