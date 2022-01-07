
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_clk_mix {int table_size; scalar_t__ table; } ;
struct clk_hw {int dummy; } ;


 int _filter_clk_table (struct mmp_clk_mix*,scalar_t__,int ) ;
 struct mmp_clk_mix* to_clk_mix (struct clk_hw*) ;

__attribute__((used)) static void mmp_clk_mix_init(struct clk_hw *hw)
{
 struct mmp_clk_mix *mix = to_clk_mix(hw);

 if (mix->table)
  _filter_clk_table(mix, mix->table, mix->table_size);
}
