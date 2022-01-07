
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_aux {int rtbl_cnt; } ;


 int aux_calc_rate ;
 long clk_round_rate_index (struct clk_hw*,unsigned long,unsigned long,int ,int ,int*) ;
 struct clk_aux* to_clk_aux (struct clk_hw*) ;

__attribute__((used)) static long clk_aux_round_rate(struct clk_hw *hw, unsigned long drate,
  unsigned long *prate)
{
 struct clk_aux *aux = to_clk_aux(hw);
 int unused;

 return clk_round_rate_index(hw, drate, *prate, aux_calc_rate,
   aux->rtbl_cnt, &unused);
}
