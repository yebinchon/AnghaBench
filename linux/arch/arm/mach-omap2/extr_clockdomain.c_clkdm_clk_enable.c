
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockdomain {int dummy; } ;
struct clk {int dummy; } ;


 int EINVAL ;
 int _clkdm_clk_hwmod_enable (struct clockdomain*) ;

int clkdm_clk_enable(struct clockdomain *clkdm, struct clk *clk)
{





 if (!clk)
  return -EINVAL;

 return _clkdm_clk_hwmod_enable(clkdm);
}
