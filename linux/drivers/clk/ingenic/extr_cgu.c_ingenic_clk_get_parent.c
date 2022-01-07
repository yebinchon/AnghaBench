
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct ingenic_clk {size_t idx; struct ingenic_cgu* cgu; } ;
struct TYPE_2__ {size_t shift; scalar_t__ bits; scalar_t__ reg; } ;
struct ingenic_cgu_clk_info {int type; int* parents; TYPE_1__ mux; } ;
struct ingenic_cgu {scalar_t__ base; struct ingenic_cgu_clk_info* clock_info; } ;
struct clk_hw {int dummy; } ;


 int CGU_CLK_MUX ;
 size_t GENMASK (scalar_t__,int ) ;
 size_t readl (scalar_t__) ;
 struct ingenic_clk* to_ingenic_clk (struct clk_hw*) ;

__attribute__((used)) static u8 ingenic_clk_get_parent(struct clk_hw *hw)
{
 struct ingenic_clk *ingenic_clk = to_ingenic_clk(hw);
 struct ingenic_cgu *cgu = ingenic_clk->cgu;
 const struct ingenic_cgu_clk_info *clk_info;
 u32 reg;
 u8 i, hw_idx, idx = 0;

 clk_info = &cgu->clock_info[ingenic_clk->idx];

 if (clk_info->type & CGU_CLK_MUX) {
  reg = readl(cgu->base + clk_info->mux.reg);
  hw_idx = (reg >> clk_info->mux.shift) &
    GENMASK(clk_info->mux.bits - 1, 0);





  for (i = 0; i < hw_idx; i++) {
   if (clk_info->parents[i] != -1)
    idx++;
  }
 }

 return idx;
}
