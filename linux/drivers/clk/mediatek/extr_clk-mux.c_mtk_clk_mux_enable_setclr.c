
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_clk_mux {TYPE_1__* data; int regmap; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int gate_shift; int clr_ofs; } ;


 int BIT (int ) ;
 int regmap_write (int ,int ,int ) ;
 struct mtk_clk_mux* to_mtk_clk_mux (struct clk_hw*) ;

__attribute__((used)) static int mtk_clk_mux_enable_setclr(struct clk_hw *hw)
{
 struct mtk_clk_mux *mux = to_mtk_clk_mux(hw);

 return regmap_write(mux->regmap, mux->data->clr_ofs,
   BIT(mux->data->gate_shift));
}
