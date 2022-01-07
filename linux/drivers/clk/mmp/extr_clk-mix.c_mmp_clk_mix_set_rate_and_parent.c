
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mmp_clk_mix {int dummy; } ;
struct clk_hw {int dummy; } ;


 int _get_div_val (struct mmp_clk_mix*,unsigned int) ;
 int _get_mux_val (struct mmp_clk_mix*,int ) ;
 int _set_rate (struct mmp_clk_mix*,int ,int ,int,int) ;
 struct mmp_clk_mix* to_clk_mix (struct clk_hw*) ;

__attribute__((used)) static int mmp_clk_mix_set_rate_and_parent(struct clk_hw *hw,
      unsigned long rate,
      unsigned long parent_rate,
      u8 index)
{
 struct mmp_clk_mix *mix = to_clk_mix(hw);
 unsigned int div;
 u32 div_val, mux_val;

 div = parent_rate / rate;
 div_val = _get_div_val(mix, div);
 mux_val = _get_mux_val(mix, index);

 return _set_rate(mix, mux_val, div_val, 1, 1);
}
