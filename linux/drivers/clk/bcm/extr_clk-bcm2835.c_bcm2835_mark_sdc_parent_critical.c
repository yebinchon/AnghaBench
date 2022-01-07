
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* clk_get_parent (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;

__attribute__((used)) static int bcm2835_mark_sdc_parent_critical(struct clk *sdc)
{
 struct clk *parent = clk_get_parent(sdc);

 if (IS_ERR(parent))
  return PTR_ERR(parent);

 return clk_prepare_enable(parent);
}
