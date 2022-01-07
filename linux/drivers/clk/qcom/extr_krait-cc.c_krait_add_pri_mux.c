
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct clk_init_data* init; } ;
struct krait_mux_clk {int mask; unsigned int offset; int lpl; int safe_sel; TYPE_1__ hw; int parent_map; scalar_t__ shift; } ;
struct device {int dummy; } ;
struct clk_init_data {char const** parent_names; char const* name; int flags; int * ops; int num_parents; } ;
struct clk {int dummy; } ;


 int ARRAY_SIZE (char const**) ;
 int CLK_SET_RATE_PARENT ;
 int ENOMEM ;
 struct clk* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct clk* devm_clk_register (struct device*,TYPE_1__*) ;
 struct krait_mux_clk* devm_kzalloc (struct device*,int,int ) ;
 void* kasprintf (int ,char*,char const*) ;
 int kfree (char const*) ;
 int krait_mux_clk_ops ;
 int krait_notifier_register (struct device*,struct clk*,struct krait_mux_clk*) ;
 int pri_mux_map ;

__attribute__((used)) static struct clk *
krait_add_pri_mux(struct device *dev, int id, const char *s,
    unsigned int offset)
{
 int ret;
 struct krait_mux_clk *mux;
 const char *p_names[3];
 struct clk_init_data init = {
  .parent_names = p_names,
  .num_parents = ARRAY_SIZE(p_names),
  .ops = &krait_mux_clk_ops,
  .flags = CLK_SET_RATE_PARENT,
 };
 struct clk *clk;

 mux = devm_kzalloc(dev, sizeof(*mux), GFP_KERNEL);
 if (!mux)
  return ERR_PTR(-ENOMEM);

 mux->mask = 0x3;
 mux->shift = 0;
 mux->offset = offset;
 mux->lpl = id >= 0;
 mux->parent_map = pri_mux_map;
 mux->hw.init = &init;
 mux->safe_sel = 2;

 init.name = kasprintf(GFP_KERNEL, "krait%s_pri_mux", s);
 if (!init.name)
  return ERR_PTR(-ENOMEM);

 p_names[0] = kasprintf(GFP_KERNEL, "hfpll%s", s);
 if (!p_names[0]) {
  clk = ERR_PTR(-ENOMEM);
  goto err_p0;
 }

 p_names[1] = kasprintf(GFP_KERNEL, "hfpll%s_div", s);
 if (!p_names[1]) {
  clk = ERR_PTR(-ENOMEM);
  goto err_p1;
 }

 p_names[2] = kasprintf(GFP_KERNEL, "krait%s_sec_mux", s);
 if (!p_names[2]) {
  clk = ERR_PTR(-ENOMEM);
  goto err_p2;
 }

 clk = devm_clk_register(dev, &mux->hw);

 ret = krait_notifier_register(dev, clk, mux);
 if (ret)
  goto err_p3;
err_p3:
 kfree(p_names[2]);
err_p2:
 kfree(p_names[1]);
err_p1:
 kfree(p_names[0]);
err_p0:
 kfree(init.name);
 return clk;
}
