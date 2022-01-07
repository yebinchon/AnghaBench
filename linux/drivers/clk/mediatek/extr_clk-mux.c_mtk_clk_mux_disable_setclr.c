
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_clk_mux {TYPE_1__* data; int regmap; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int gate_shift; int set_ofs; } ;


 int BIT (int ) ;
 int regmap_write (int ,int ,int ) ;
 struct mtk_clk_mux* to_mtk_clk_mux (struct clk_hw*) ;

__attribute__((used)) static void mtk_clk_mux_disable_setclr(struct clk_hw *hw)
{
 struct mtk_clk_mux *mux = to_mtk_clk_mux(hw);

 regmap_write(mux->regmap, mux->data->set_ofs,
   BIT(mux->data->gate_shift));
}
