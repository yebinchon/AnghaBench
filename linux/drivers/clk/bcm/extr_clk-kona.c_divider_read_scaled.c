
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ccu_data {int dummy; } ;
struct TYPE_4__ {int width; int shift; int offset; } ;
struct TYPE_3__ {TYPE_2__ s; int fixed; } ;
struct bcm_clk_div {TYPE_1__ u; } ;


 int __ccu_read (struct ccu_data*,int ) ;
 int bitfield_extract (int ,int ,int ) ;
 unsigned long ccu_lock (struct ccu_data*) ;
 int ccu_unlock (struct ccu_data*,unsigned long) ;
 scalar_t__ divider_is_fixed (struct bcm_clk_div*) ;
 int scaled_div_value (struct bcm_clk_div*,int ) ;

__attribute__((used)) static u64 divider_read_scaled(struct ccu_data *ccu, struct bcm_clk_div *div)
{
 unsigned long flags;
 u32 reg_val;
 u32 reg_div;

 if (divider_is_fixed(div))
  return (u64)div->u.fixed;

 flags = ccu_lock(ccu);
 reg_val = __ccu_read(ccu, div->u.s.offset);
 ccu_unlock(ccu, flags);


 reg_div = bitfield_extract(reg_val, div->u.s.shift, div->u.s.width);


 return scaled_div_value(div, reg_div);
}
