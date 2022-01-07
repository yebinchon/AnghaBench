
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_clk_common {scalar_t__ reg; int regmap; } ;
struct sprd_gate {int flags; int sc_offset; int enable_mask; struct sprd_clk_common common; } ;


 int CLK_GATE_SET_TO_DISABLE ;
 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static void clk_sc_gate_toggle(const struct sprd_gate *sg, bool en)
{
 const struct sprd_clk_common *common = &sg->common;
 bool set = sg->flags & CLK_GATE_SET_TO_DISABLE ? 1 : 0;
 unsigned int offset;

 set ^= en;







 offset = set ? sg->sc_offset : sg->sc_offset * 2;

 regmap_write(common->regmap, common->reg + offset,
     sg->enable_mask);
}
