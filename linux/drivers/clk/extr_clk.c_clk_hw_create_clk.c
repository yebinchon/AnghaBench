
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk_hw {struct clk_core* core; } ;
struct clk_core {int ref; int owner; } ;
struct clk {struct device* dev; } ;


 int ENOENT ;
 struct clk* ERR_CAST (struct clk_hw*) ;
 struct clk* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct clk*) ;
 scalar_t__ IS_ERR_OR_NULL (struct clk_hw*) ;
 struct clk* alloc_clk (struct clk_core*,char const*,char const*) ;
 int clk_core_link_consumer (struct clk_core*,struct clk*) ;
 int free_clk (struct clk*) ;
 int kref_get (int *) ;
 int try_module_get (int ) ;

struct clk *clk_hw_create_clk(struct device *dev, struct clk_hw *hw,
         const char *dev_id, const char *con_id)
{
 struct clk *clk;
 struct clk_core *core;


 if (IS_ERR_OR_NULL(hw))
  return ERR_CAST(hw);

 core = hw->core;
 clk = alloc_clk(core, dev_id, con_id);
 if (IS_ERR(clk))
  return clk;
 clk->dev = dev;

 if (!try_module_get(core->owner)) {
  free_clk(clk);
  return ERR_PTR(-ENOENT);
 }

 kref_get(&core->ref);
 clk_core_link_consumer(core, clk);

 return clk;
}
