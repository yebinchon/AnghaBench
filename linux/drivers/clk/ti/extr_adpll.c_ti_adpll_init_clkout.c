
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ti_adpll_data {int dev; scalar_t__ regs; int lock; int np; } ;
struct TYPE_4__ {struct clk_init_data* init; } ;
struct TYPE_3__ {int bit_idx; scalar_t__ reg; int * lock; } ;
struct ti_adpll_clkout_data {TYPE_2__ hw; TYPE_1__ gate; struct ti_adpll_data* adpll; } ;
struct clk_ops {int is_enabled; int disable; int enable; int determine_rate; int get_parent; } ;
struct clk_init_data {char const* name; char const** parent_names; int num_parents; scalar_t__ flags; struct clk_ops* ops; } ;
struct clk {int dummy; } ;
typedef enum ti_adpll_clocks { ____Placeholder_ti_adpll_clocks } ti_adpll_clocks ;


 scalar_t__ ADPLL_CLKCTRL_OFFSET ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 char* __clk_get_name (struct clk*) ;
 int __clk_mux_determine_rate ;
 int dev_err (int ,char*,char*,int) ;
 struct clk* devm_clk_register (int ,TYPE_2__*) ;
 void* devm_kzalloc (int ,int,int ) ;
 int of_property_read_string_index (int ,char*,int,char const**) ;
 int ti_adpll_clkout_disable ;
 int ti_adpll_clkout_enable ;
 int ti_adpll_clkout_get_parent ;
 int ti_adpll_clkout_is_enabled ;
 int ti_adpll_setup_clock (struct ti_adpll_data*,struct clk*,int,int,char const*,int *) ;

__attribute__((used)) static int ti_adpll_init_clkout(struct ti_adpll_data *d,
    enum ti_adpll_clocks index,
    int output_index, int gate_bit,
    char *name, struct clk *clk0,
    struct clk *clk1)
{
 struct ti_adpll_clkout_data *co;
 struct clk_init_data init;
 struct clk_ops *ops;
 const char *parent_names[2];
 const char *child_name;
 struct clk *clock;
 int err;

 co = devm_kzalloc(d->dev, sizeof(*co), GFP_KERNEL);
 if (!co)
  return -ENOMEM;
 co->adpll = d;

 err = of_property_read_string_index(d->np,
         "clock-output-names",
         output_index,
         &child_name);
 if (err)
  return err;

 ops = devm_kzalloc(d->dev, sizeof(*ops), GFP_KERNEL);
 if (!ops)
  return -ENOMEM;

 init.name = child_name;
 init.ops = ops;
 init.flags = 0;
 co->hw.init = &init;
 parent_names[0] = __clk_get_name(clk0);
 parent_names[1] = __clk_get_name(clk1);
 init.parent_names = parent_names;
 init.num_parents = 2;

 ops->get_parent = ti_adpll_clkout_get_parent;
 ops->determine_rate = __clk_mux_determine_rate;
 if (gate_bit) {
  co->gate.lock = &d->lock;
  co->gate.reg = d->regs + ADPLL_CLKCTRL_OFFSET;
  co->gate.bit_idx = gate_bit;
  ops->enable = ti_adpll_clkout_enable;
  ops->disable = ti_adpll_clkout_disable;
  ops->is_enabled = ti_adpll_clkout_is_enabled;
 }

 clock = devm_clk_register(d->dev, &co->hw);
 if (IS_ERR(clock)) {
  dev_err(d->dev, "failed to register output %s: %li\n",
   name, PTR_ERR(clock));
  return PTR_ERR(clock);
 }

 return ti_adpll_setup_clock(d, clock, index, output_index, child_name,
        ((void*)0));
}
