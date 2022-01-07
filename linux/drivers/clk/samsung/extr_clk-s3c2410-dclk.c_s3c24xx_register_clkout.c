
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct clk_hw {struct clk_init_data* init; } ;
struct s3c24xx_clkout {struct clk_hw hw; int mask; void* shift; } ;
struct device {int dummy; } ;
struct clk_init_data {char const* name; char const** parent_names; void* num_parents; scalar_t__ flags; int * ops; } ;


 int ENOMEM ;
 struct clk_hw* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int clk_hw_register (struct device*,struct clk_hw*) ;
 struct s3c24xx_clkout* kzalloc (int,int ) ;
 int s3c24xx_clkout_ops ;

__attribute__((used)) static struct clk_hw *s3c24xx_register_clkout(struct device *dev,
  const char *name, const char **parent_names, u8 num_parents,
  u8 shift, u32 mask)
{
 struct s3c24xx_clkout *clkout;
 struct clk_init_data init;
 int ret;


 clkout = kzalloc(sizeof(*clkout), GFP_KERNEL);
 if (!clkout)
  return ERR_PTR(-ENOMEM);

 init.name = name;
 init.ops = &s3c24xx_clkout_ops;
 init.flags = 0;
 init.parent_names = parent_names;
 init.num_parents = num_parents;

 clkout->shift = shift;
 clkout->mask = mask;
 clkout->hw.init = &init;

 ret = clk_hw_register(dev, &clkout->hw);
 if (ret)
  return ERR_PTR(ret);

 return &clkout->hw;
}
