
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_init_data {char const** parent_names; size_t num_parents; int flags; int * ops; int name; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct bcm2835_cprman {char** real_parent_names; int dev; } ;
struct bcm2835_clock_data {size_t num_mux_parents; char** parents; int flags; int ctl_reg; scalar_t__ is_vpu_clock; scalar_t__ set_rate_parent; int name; } ;
struct bcm2835_clock {struct clk_hw hw; struct bcm2835_clock_data const* data; struct bcm2835_cprman* cprman; } ;
typedef int init ;


 int ARRAY_SIZE (int ) ;
 int CLK_IGNORE_UNUSED ;
 int CLK_IS_CRITICAL ;
 int CLK_SET_PARENT_GATE ;
 int CLK_SET_RATE_GATE ;
 int CLK_SET_RATE_PARENT ;
 int CM_ENABLE ;
 int CM_SRC_BITS ;
 struct clk_hw* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int bcm2835_clock_clk_ops ;
 int bcm2835_vpu_clock_clk_ops ;
 int cprman_parent_names ;
 int cprman_read (struct bcm2835_cprman*,int ) ;
 int devm_clk_hw_register (int ,struct clk_hw*) ;
 struct bcm2835_clock* devm_kzalloc (int ,int,int ) ;
 int match_string (int ,int ,char const*) ;
 int memset (struct clk_init_data*,int ,int) ;

__attribute__((used)) static struct clk_hw *bcm2835_register_clock(struct bcm2835_cprman *cprman,
       const struct bcm2835_clock_data *data)
{
 struct bcm2835_clock *clock;
 struct clk_init_data init;
 const char *parents[1 << CM_SRC_BITS];
 size_t i;
 int ret;





 for (i = 0; i < data->num_mux_parents; i++) {
  parents[i] = data->parents[i];

  ret = match_string(cprman_parent_names,
       ARRAY_SIZE(cprman_parent_names),
       parents[i]);
  if (ret >= 0)
   parents[i] = cprman->real_parent_names[ret];
 }

 memset(&init, 0, sizeof(init));
 init.parent_names = parents;
 init.num_parents = data->num_mux_parents;
 init.name = data->name;
 init.flags = data->flags | CLK_IGNORE_UNUSED;





 if (data->set_rate_parent)
  init.flags |= CLK_SET_RATE_PARENT;

 if (data->is_vpu_clock) {
  init.ops = &bcm2835_vpu_clock_clk_ops;
 } else {
  init.ops = &bcm2835_clock_clk_ops;
  init.flags |= CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE;




  if (!(cprman_read(cprman, data->ctl_reg) & CM_ENABLE))
   init.flags &= ~CLK_IS_CRITICAL;
 }

 clock = devm_kzalloc(cprman->dev, sizeof(*clock), GFP_KERNEL);
 if (!clock)
  return ((void*)0);

 clock->cprman = cprman;
 clock->data = data;
 clock->hw.init = &init;

 ret = devm_clk_hw_register(cprman->dev, &clock->hw);
 if (ret)
  return ERR_PTR(ret);
 return &clock->hw;
}
