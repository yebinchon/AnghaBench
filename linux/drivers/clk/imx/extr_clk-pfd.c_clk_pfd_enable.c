
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pfd {int idx; scalar_t__ reg; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ CLR ;
 struct clk_pfd* to_clk_pfd (struct clk_hw*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int clk_pfd_enable(struct clk_hw *hw)
{
 struct clk_pfd *pfd = to_clk_pfd(hw);

 writel_relaxed(1 << ((pfd->idx + 1) * 8 - 1), pfd->reg + CLR);

 return 0;
}
