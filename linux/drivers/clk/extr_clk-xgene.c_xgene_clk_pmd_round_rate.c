
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u64 ;
struct xgene_clk_pmd {unsigned long denom; } ;
struct clk_hw {int dummy; } ;


 long DIV_ROUND_UP_ULL (long,unsigned long) ;
 int do_div (long,unsigned long) ;
 struct xgene_clk_pmd* to_xgene_clk_pmd (struct clk_hw*) ;

__attribute__((used)) static long xgene_clk_pmd_round_rate(struct clk_hw *hw, unsigned long rate,
         unsigned long *parent_rate)
{
 struct xgene_clk_pmd *fd = to_xgene_clk_pmd(hw);
 u64 ret, scale;

 if (!rate || rate >= *parent_rate)
  return *parent_rate;


 ret = rate * fd->denom;
 scale = DIV_ROUND_UP_ULL(ret, *parent_rate);

 ret = (u64)*parent_rate * scale;
 do_div(ret, fd->denom);

 return ret;
}
