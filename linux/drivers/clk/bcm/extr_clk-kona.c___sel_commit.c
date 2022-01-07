
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct ccu_data {int dummy; } ;
struct bcm_clk_trig {int dummy; } ;
struct bcm_clk_sel {scalar_t__ clk_index; scalar_t__ parent_count; scalar_t__* parent_sel; int offset; int width; int shift; } ;
struct bcm_clk_gate {int dummy; } ;


 scalar_t__ BAD_CLK_INDEX ;
 int BUG_ON (int) ;
 int EINVAL ;
 int EIO ;
 int ENXIO ;
 scalar_t__ __ccu_read (struct ccu_data*,int ) ;
 int __ccu_write (struct ccu_data*,int ,scalar_t__) ;
 int __clk_gate (struct ccu_data*,struct bcm_clk_gate*,int) ;
 int __clk_trigger (struct ccu_data*,struct bcm_clk_trig*) ;
 int __is_clk_gate_enabled (struct ccu_data*,struct bcm_clk_gate*) ;
 scalar_t__ bitfield_extract (scalar_t__,int ,int ) ;
 scalar_t__ bitfield_replace (scalar_t__,int ,int ,scalar_t__) ;
 scalar_t__ parent_index (struct bcm_clk_sel*,scalar_t__) ;
 int selector_exists (struct bcm_clk_sel*) ;

__attribute__((used)) static int
__sel_commit(struct ccu_data *ccu, struct bcm_clk_gate *gate,
   struct bcm_clk_sel *sel, struct bcm_clk_trig *trig)
{
 u32 parent_sel;
 u32 reg_val;
 bool enabled;
 int ret = 0;

 BUG_ON(!selector_exists(sel));






 if (sel->clk_index == BAD_CLK_INDEX) {
  u8 index;

  reg_val = __ccu_read(ccu, sel->offset);
  parent_sel = bitfield_extract(reg_val, sel->shift, sel->width);
  index = parent_index(sel, parent_sel);
  if (index == BAD_CLK_INDEX)
   return -EINVAL;
  sel->clk_index = index;

  return 0;
 }

 BUG_ON((u32)sel->clk_index >= sel->parent_count);
 parent_sel = sel->parent_sel[sel->clk_index];


 enabled = __is_clk_gate_enabled(ccu, gate);
 if (!enabled && !__clk_gate(ccu, gate, 1))
  return -ENXIO;


 reg_val = __ccu_read(ccu, sel->offset);
 reg_val = bitfield_replace(reg_val, sel->shift, sel->width, parent_sel);
 __ccu_write(ccu, sel->offset, reg_val);


 if (!__clk_trigger(ccu, trig))
  ret = -EIO;


 if (!enabled && !__clk_gate(ccu, gate, 0))
  ret = ret ? ret : -ENXIO;

 return ret;
}
