
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct src_sel {int parent_map; } ;
struct clk_rate_request {int dummy; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int regmap; } ;
struct clk_dyn_rcg {int freq_tbl; struct src_sel* s; int bank_reg; TYPE_1__ clkr; } ;


 int _freq_tbl_determine_rate (struct clk_hw*,int ,struct clk_rate_request*,int ) ;
 int reg_to_bank (struct clk_dyn_rcg*,int ) ;
 int regmap_read (int ,int ,int *) ;
 struct clk_dyn_rcg* to_clk_dyn_rcg (struct clk_hw*) ;

__attribute__((used)) static int clk_dyn_rcg_determine_rate(struct clk_hw *hw,
          struct clk_rate_request *req)
{
 struct clk_dyn_rcg *rcg = to_clk_dyn_rcg(hw);
 u32 reg;
 int bank;
 struct src_sel *s;

 regmap_read(rcg->clkr.regmap, rcg->bank_reg, &reg);
 bank = reg_to_bank(rcg, reg);
 s = &rcg->s[bank];

 return _freq_tbl_determine_rate(hw, rcg->freq_tbl, req, s->parent_map);
}
