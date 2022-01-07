
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mtk_clk_mux {TYPE_1__* data; int regmap; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int mux_shift; int mux_ofs; scalar_t__ mux_width; } ;


 int GENMASK (scalar_t__,int ) ;
 int regmap_read (int ,int ,int*) ;
 struct mtk_clk_mux* to_mtk_clk_mux (struct clk_hw*) ;

__attribute__((used)) static u8 mtk_clk_mux_get_parent(struct clk_hw *hw)
{
 struct mtk_clk_mux *mux = to_mtk_clk_mux(hw);
 u32 mask = GENMASK(mux->data->mux_width - 1, 0);
 u32 val;

 regmap_read(mux->regmap, mux->data->mux_ofs, &val);
 val = (val >> mux->data->mux_shift) & mask;

 return val;
}
