
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_adpll_data {int dev; } ;
struct clk {int dummy; } ;
typedef enum ti_adpll_clocks { ____Placeholder_ti_adpll_clocks } ti_adpll_clocks ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 char* __clk_get_name (struct clk*) ;
 struct clk* clk_register_fixed_factor (int ,char const*,char const*,int ,unsigned int,unsigned int) ;
 int clk_unregister ;
 char* ti_adpll_clk_get_name (struct ti_adpll_data*,int ,char*) ;
 int ti_adpll_setup_clock (struct ti_adpll_data*,struct clk*,int,int ,char const*,int ) ;

__attribute__((used)) static int ti_adpll_init_fixed_factor(struct ti_adpll_data *d,
          enum ti_adpll_clocks index,
          char *name,
          struct clk *parent_clock,
          unsigned int mult,
          unsigned int div)
{
 const char *child_name;
 const char *parent_name;
 struct clk *clock;

 child_name = ti_adpll_clk_get_name(d, -ENODEV, name);
 if (!child_name)
  return -ENOMEM;

 parent_name = __clk_get_name(parent_clock);
 clock = clk_register_fixed_factor(d->dev, child_name, parent_name,
       0, mult, div);
 if (IS_ERR(clock))
  return PTR_ERR(clock);

 return ti_adpll_setup_clock(d, clock, index, -ENODEV, child_name,
        clk_unregister);
}
