
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ccu_data {int dummy; } ;
struct bcm_clk_trig {int dummy; } ;
struct bcm_clk_gate {int dummy; } ;
struct TYPE_3__ {int offset; int width; int shift; int scaled_div; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct bcm_clk_div {TYPE_2__ u; } ;


 int BAD_SCALED_DIV_VALUE ;
 int BUG_ON (int ) ;
 int EIO ;
 int ENXIO ;
 int __ccu_read (struct ccu_data*,int ) ;
 int __ccu_write (struct ccu_data*,int ,int ) ;
 int __clk_gate (struct ccu_data*,struct bcm_clk_gate*,int) ;
 int __clk_trigger (struct ccu_data*,struct bcm_clk_trig*) ;
 int __is_clk_gate_enabled (struct ccu_data*,struct bcm_clk_gate*) ;
 int bitfield_extract (int ,int ,int ) ;
 int bitfield_replace (int ,int ,int ,int ) ;
 int divider (struct bcm_clk_div*,int ) ;
 int divider_is_fixed (struct bcm_clk_div*) ;
 int scaled_div_value (struct bcm_clk_div*,int ) ;

__attribute__((used)) static int __div_commit(struct ccu_data *ccu, struct bcm_clk_gate *gate,
   struct bcm_clk_div *div, struct bcm_clk_trig *trig)
{
 bool enabled;
 u32 reg_div;
 u32 reg_val;
 int ret = 0;

 BUG_ON(divider_is_fixed(div));






 if (div->u.s.scaled_div == BAD_SCALED_DIV_VALUE) {
  reg_val = __ccu_read(ccu, div->u.s.offset);
  reg_div = bitfield_extract(reg_val, div->u.s.shift,
      div->u.s.width);
  div->u.s.scaled_div = scaled_div_value(div, reg_div);

  return 0;
 }


 reg_div = divider(div, div->u.s.scaled_div);


 enabled = __is_clk_gate_enabled(ccu, gate);
 if (!enabled && !__clk_gate(ccu, gate, 1)) {
  ret = -ENXIO;
  goto out;
 }


 reg_val = __ccu_read(ccu, div->u.s.offset);
 reg_val = bitfield_replace(reg_val, div->u.s.shift, div->u.s.width,
     reg_div);
 __ccu_write(ccu, div->u.s.offset, reg_val);


 if (!__clk_trigger(ccu, trig))
  ret = -EIO;


 if (!enabled && !__clk_gate(ccu, gate, 0))
  ret = ret ? ret : -ENXIO;
out:
 return ret;
}
