
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_fractional_divider {unsigned long nwidth; int mwidth; } ;


 int GENMASK (int,int ) ;
 struct clk_hw* clk_hw_get_parent (struct clk_hw*) ;
 unsigned long clk_hw_get_rate (struct clk_hw*) ;
 unsigned long fls_long (unsigned long) ;
 int rational_best_approximation (unsigned long,unsigned long,int ,int ,unsigned long*,unsigned long*) ;
 struct clk_fractional_divider* to_clk_fd (struct clk_hw*) ;

__attribute__((used)) static void rockchip_fractional_approximation(struct clk_hw *hw,
  unsigned long rate, unsigned long *parent_rate,
  unsigned long *m, unsigned long *n)
{
 struct clk_fractional_divider *fd = to_clk_fd(hw);
 unsigned long p_rate, p_parent_rate;
 struct clk_hw *p_parent;
 unsigned long scale;

 p_rate = clk_hw_get_rate(clk_hw_get_parent(hw));
 if ((rate * 20 > p_rate) && (p_rate % rate != 0)) {
  p_parent = clk_hw_get_parent(clk_hw_get_parent(hw));
  p_parent_rate = clk_hw_get_rate(p_parent);
  *parent_rate = p_parent_rate;
 }






 scale = fls_long(*parent_rate / rate - 1);
 if (scale > fd->nwidth)
  rate <<= scale - fd->nwidth;

 rational_best_approximation(rate, *parent_rate,
   GENMASK(fd->mwidth - 1, 0), GENMASK(fd->nwidth - 1, 0),
   m, n);
}
