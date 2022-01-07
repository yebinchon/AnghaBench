
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int of_node; } ;
struct clk_init_data {int num_parents; int name; int ops; int * parent_names; } ;
struct TYPE_4__ {int num; TYPE_2__** hws; } ;
struct __prci_data {TYPE_1__ hw_clks; } ;
struct TYPE_5__ {struct clk_init_data* init; } ;
struct __prci_clock {TYPE_2__ hw; int name; scalar_t__ pwd; struct __prci_data* pd; int ops; int parent_name; } ;


 int ARRAY_SIZE (struct __prci_clock*) ;
 int EINVAL ;
 int EXPECTED_CLK_PARENT_COUNT ;
 struct __prci_clock* __prci_init_clocks ;
 int __prci_wrpll_read_cfg (struct __prci_data*,scalar_t__) ;
 int clk_hw_register_clkdev (TYPE_2__*,int ,int ) ;
 int dev_err (struct device*,char*,int) ;
 int dev_name (struct device*) ;
 int dev_warn (struct device*,char*,int ,int) ;
 int devm_clk_hw_register (struct device*,TYPE_2__*) ;
 int devm_of_clk_add_hw_provider (struct device*,int ,TYPE_1__*) ;
 int of_clk_get_parent_count (int ) ;
 int of_clk_hw_onecell_get ;

__attribute__((used)) static int __prci_register_clocks(struct device *dev, struct __prci_data *pd)
{
 struct clk_init_data init = { };
 struct __prci_clock *pic;
 int parent_count, i, r;

 parent_count = of_clk_get_parent_count(dev->of_node);
 if (parent_count != EXPECTED_CLK_PARENT_COUNT) {
  dev_err(dev, "expected only two parent clocks, found %d\n",
   parent_count);
  return -EINVAL;
 }


 for (i = 0; i < ARRAY_SIZE(__prci_init_clocks); ++i) {
  pic = &__prci_init_clocks[i];

  init.name = pic->name;
  init.parent_names = &pic->parent_name;
  init.num_parents = 1;
  init.ops = pic->ops;
  pic->hw.init = &init;

  pic->pd = pd;

  if (pic->pwd)
   __prci_wrpll_read_cfg(pd, pic->pwd);

  r = devm_clk_hw_register(dev, &pic->hw);
  if (r) {
   dev_warn(dev, "Failed to register clock %s: %d\n",
     init.name, r);
   return r;
  }

  r = clk_hw_register_clkdev(&pic->hw, pic->name, dev_name(dev));
  if (r) {
   dev_warn(dev, "Failed to register clkdev for %s: %d\n",
     init.name, r);
   return r;
  }

  pd->hw_clks.hws[i] = &pic->hw;
 }

 pd->hw_clks.num = i;

 r = devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
     &pd->hw_clks);
 if (r) {
  dev_err(dev, "could not add hw_provider: %d\n", r);
  return r;
 }

 return 0;
}
