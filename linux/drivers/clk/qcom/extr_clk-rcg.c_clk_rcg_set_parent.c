
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_4__ {int regmap; } ;
struct TYPE_6__ {TYPE_2__* parent_map; } ;
struct clk_rcg {int ns_reg; TYPE_1__ clkr; TYPE_3__ s; } ;
struct clk_hw {int dummy; } ;
struct TYPE_5__ {int cfg; } ;


 int regmap_read (int ,int ,int *) ;
 int regmap_write (int ,int ,int ) ;
 int src_to_ns (TYPE_3__*,int ,int ) ;
 struct clk_rcg* to_clk_rcg (struct clk_hw*) ;

__attribute__((used)) static int clk_rcg_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_rcg *rcg = to_clk_rcg(hw);
 u32 ns;

 regmap_read(rcg->clkr.regmap, rcg->ns_reg, &ns);
 ns = src_to_ns(&rcg->s, rcg->s.parent_map[index].cfg, ns);
 regmap_write(rcg->clkr.regmap, rcg->ns_reg, ns);

 return 0;
}
