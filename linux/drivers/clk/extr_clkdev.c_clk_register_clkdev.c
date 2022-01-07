
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_lookup {int dummy; } ;
struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int __clk_get_hw (struct clk*) ;
 int do_clk_register_clkdev (int ,struct clk_lookup**,char const*,char const*) ;

int clk_register_clkdev(struct clk *clk, const char *con_id,
 const char *dev_id)
{
 struct clk_lookup *cl;

 if (IS_ERR(clk))
  return PTR_ERR(clk);

 return do_clk_register_clkdev(__clk_get_hw(clk), &cl, con_id,
           dev_id);
}
