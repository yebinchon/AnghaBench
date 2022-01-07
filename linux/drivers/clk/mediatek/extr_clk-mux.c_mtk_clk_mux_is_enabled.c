
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_clk_mux {TYPE_1__* data; int regmap; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int gate_shift; int mux_ofs; } ;


 int BIT (int ) ;
 int regmap_read (int ,int ,int*) ;
 struct mtk_clk_mux* to_mtk_clk_mux (struct clk_hw*) ;

__attribute__((used)) static int mtk_clk_mux_is_enabled(struct clk_hw *hw)
{
 struct mtk_clk_mux *mux = to_mtk_clk_mux(hw);
 u32 val;

 regmap_read(mux->regmap, mux->data->mux_ofs, &val);

 return (val & BIT(mux->data->gate_shift)) == 0;
}
