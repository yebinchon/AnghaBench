
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct device {TYPE_1__* driver; } ;
struct clk_init_data {int num_parents; int flags; scalar_t__ ops; int name; } ;
struct clk_hw {struct clk* clk; struct clk_core* core; struct clk_init_data* init; } ;
struct clk_core {int rpm_enabled; int name; int clks; int max_rate; scalar_t__ min_rate; int num_parents; int flags; struct clk_hw* hw; int owner; struct device_node* of_node; struct device* dev; scalar_t__ ops; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int owner; } ;


 int EINVAL ;
 int ENOMEM ;
 struct clk* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int ULONG_MAX ;
 scalar_t__ WARN_ON (int) ;
 int __clk_core_init (struct clk_core*) ;
 struct clk* alloc_clk (struct clk_core*,int *,int *) ;
 int clk_core_free_parent_map (struct clk_core*) ;
 int clk_core_link_consumer (struct clk_core*,struct clk*) ;
 int clk_core_populate_parent_map (struct clk_core*,struct clk_init_data const*) ;
 int clk_core_unlink_consumer (struct clk*) ;
 int clk_prepare_lock () ;
 int clk_prepare_unlock () ;
 int free_clk (struct clk*) ;
 int kfree (struct clk_core*) ;
 int kfree_const (int ) ;
 int kstrdup_const (int ,int ) ;
 struct clk_core* kzalloc (int,int ) ;
 scalar_t__ pm_runtime_enabled (struct device*) ;

__attribute__((used)) static struct clk *
__clk_register(struct device *dev, struct device_node *np, struct clk_hw *hw)
{
 int ret;
 struct clk_core *core;
 const struct clk_init_data *init = hw->init;






 hw->init = ((void*)0);

 core = kzalloc(sizeof(*core), GFP_KERNEL);
 if (!core) {
  ret = -ENOMEM;
  goto fail_out;
 }

 core->name = kstrdup_const(init->name, GFP_KERNEL);
 if (!core->name) {
  ret = -ENOMEM;
  goto fail_name;
 }

 if (WARN_ON(!init->ops)) {
  ret = -EINVAL;
  goto fail_ops;
 }
 core->ops = init->ops;

 if (dev && pm_runtime_enabled(dev))
  core->rpm_enabled = 1;
 core->dev = dev;
 core->of_node = np;
 if (dev && dev->driver)
  core->owner = dev->driver->owner;
 core->hw = hw;
 core->flags = init->flags;
 core->num_parents = init->num_parents;
 core->min_rate = 0;
 core->max_rate = ULONG_MAX;
 hw->core = core;

 ret = clk_core_populate_parent_map(core, init);
 if (ret)
  goto fail_parents;

 INIT_HLIST_HEAD(&core->clks);





 hw->clk = alloc_clk(core, ((void*)0), ((void*)0));
 if (IS_ERR(hw->clk)) {
  ret = PTR_ERR(hw->clk);
  goto fail_create_clk;
 }

 clk_core_link_consumer(hw->core, hw->clk);

 ret = __clk_core_init(core);
 if (!ret)
  return hw->clk;

 clk_prepare_lock();
 clk_core_unlink_consumer(hw->clk);
 clk_prepare_unlock();

 free_clk(hw->clk);
 hw->clk = ((void*)0);

fail_create_clk:
 clk_core_free_parent_map(core);
fail_parents:
fail_ops:
 kfree_const(core->name);
fail_name:
 kfree(core);
fail_out:
 return ERR_PTR(ret);
}
