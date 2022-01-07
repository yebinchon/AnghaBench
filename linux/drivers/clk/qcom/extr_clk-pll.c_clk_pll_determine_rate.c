
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_freq_tbl {int freq; } ;
struct clk_rate_request {int rate; int best_parent_rate; } ;
struct clk_pll {int freq_tbl; } ;
struct clk_hw {int dummy; } ;


 int clk_pll_recalc_rate (struct clk_hw*,int ) ;
 struct pll_freq_tbl* find_freq (int ,int ) ;
 struct clk_pll* to_clk_pll (struct clk_hw*) ;

__attribute__((used)) static int
clk_pll_determine_rate(struct clk_hw *hw, struct clk_rate_request *req)
{
 struct clk_pll *pll = to_clk_pll(hw);
 const struct pll_freq_tbl *f;

 f = find_freq(pll->freq_tbl, req->rate);
 if (!f)
  req->rate = clk_pll_recalc_rate(hw, req->best_parent_rate);
 else
  req->rate = f->freq;

 return 0;
}
