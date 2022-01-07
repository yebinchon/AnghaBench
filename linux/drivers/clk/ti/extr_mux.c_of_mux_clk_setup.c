
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct device_node {int name; } ;
struct clk_omap_reg {int dummy; } ;
struct clk {int dummy; } ;
typedef int s32 ;


 int CLK_MUX_INDEX_ONE ;
 int CLK_SET_RATE_NO_REPARENT ;
 int CLK_SET_RATE_PARENT ;
 int EINVAL ;
 int GFP_KERNEL ;
 int IS_ERR (struct clk*) ;
 struct clk* _register_mux (int *,int ,char const**,unsigned int,int,struct clk_omap_reg*,int,int,int,int,int *) ;
 int fls (int) ;
 int kfree (char const**) ;
 char** kzalloc (int,int ) ;
 int of_clk_add_provider (struct device_node*,int ,struct clk*) ;
 unsigned int of_clk_get_parent_count (struct device_node*) ;
 int of_clk_parent_fill (struct device_node*,char const**,unsigned int) ;
 int of_clk_src_simple_get ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int pr_err (char*,struct device_node*) ;
 scalar_t__ ti_clk_get_reg_addr (struct device_node*,int ,struct clk_omap_reg*) ;

__attribute__((used)) static void of_mux_clk_setup(struct device_node *node)
{
 struct clk *clk;
 struct clk_omap_reg reg;
 unsigned int num_parents;
 const char **parent_names;
 u8 clk_mux_flags = 0;
 u32 mask = 0;
 u32 shift = 0;
 s32 latch = -EINVAL;
 u32 flags = CLK_SET_RATE_NO_REPARENT;

 num_parents = of_clk_get_parent_count(node);
 if (num_parents < 2) {
  pr_err("mux-clock %pOFn must have parents\n", node);
  return;
 }
 parent_names = kzalloc((sizeof(char *) * num_parents), GFP_KERNEL);
 if (!parent_names)
  goto cleanup;

 of_clk_parent_fill(node, parent_names, num_parents);

 if (ti_clk_get_reg_addr(node, 0, &reg))
  goto cleanup;

 of_property_read_u32(node, "ti,bit-shift", &shift);

 of_property_read_u32(node, "ti,latch-bit", &latch);

 if (of_property_read_bool(node, "ti,index-starts-at-one"))
  clk_mux_flags |= CLK_MUX_INDEX_ONE;

 if (of_property_read_bool(node, "ti,set-rate-parent"))
  flags |= CLK_SET_RATE_PARENT;


 mask = num_parents;
 if (!(clk_mux_flags & CLK_MUX_INDEX_ONE))
  mask--;

 mask = (1 << fls(mask)) - 1;

 clk = _register_mux(((void*)0), node->name, parent_names, num_parents,
       flags, &reg, shift, mask, latch, clk_mux_flags,
       ((void*)0));

 if (!IS_ERR(clk))
  of_clk_add_provider(node, of_clk_src_simple_get, clk);

cleanup:
 kfree(parent_names);
}
