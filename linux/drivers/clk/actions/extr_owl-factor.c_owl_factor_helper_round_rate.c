
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_factor_hw {struct clk_factor_table* table; } ;
struct owl_clk_common {int hw; } ;
struct clk_factor_table {int dummy; } ;


 int _get_table_div_mul (struct clk_factor_table const*,unsigned int,unsigned int*,unsigned int*) ;
 unsigned int owl_clk_val_best (struct owl_factor_hw const*,int *,unsigned long,unsigned long*) ;

long owl_factor_helper_round_rate(struct owl_clk_common *common,
    const struct owl_factor_hw *factor_hw,
    unsigned long rate,
    unsigned long *parent_rate)
{
 const struct clk_factor_table *clkt = factor_hw->table;
 unsigned int val, mul = 0, div = 1;

 val = owl_clk_val_best(factor_hw, &common->hw, rate, parent_rate);
 _get_table_div_mul(clkt, val, &mul, &div);

 return *parent_rate * mul / div;
}
