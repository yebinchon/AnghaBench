
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {struct clk_init_data* init; } ;
struct timer_ker {struct clk_hw hw; int dppre_shift; int * lock; } ;
struct device {int dummy; } ;
struct clk_init_data {char const* name; unsigned long flags; char const** parent_names; int num_parents; int * ops; } ;
typedef int spinlock_t ;


 int ENOMEM ;
 struct clk_hw* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int clk_hw_register (struct device*,struct clk_hw*) ;
 int kfree (struct timer_ker*) ;
 struct timer_ker* kzalloc (int,int ) ;
 int timer_ker_ops ;

__attribute__((used)) static struct clk_hw *clk_register_stm32_timer_ker(struct device *dev,
  const char *name, const char *parent_name,
  unsigned long flags,
  u8 dppre_shift,
  spinlock_t *lock)
{
 struct timer_ker *element;
 struct clk_init_data init;
 struct clk_hw *hw;
 int err;

 element = kzalloc(sizeof(*element), GFP_KERNEL);
 if (!element)
  return ERR_PTR(-ENOMEM);

 init.name = name;
 init.ops = &timer_ker_ops;
 init.flags = flags;
 init.parent_names = &parent_name;
 init.num_parents = 1;

 element->hw.init = &init;
 element->lock = lock;
 element->dppre_shift = dppre_shift;

 hw = &element->hw;
 err = clk_hw_register(dev, hw);

 if (err) {
  kfree(element);
  return ERR_PTR(err);
 }

 return hw;
}
