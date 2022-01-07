
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_fractional_divider {unsigned long nwidth; int mwidth; } ;


 int GENMASK (int,int ) ;
 unsigned long fls_long (unsigned long) ;
 int rational_best_approximation (unsigned long,unsigned long,int ,int ,unsigned long*,unsigned long*) ;
 struct clk_fractional_divider* to_clk_fd (struct clk_hw*) ;

__attribute__((used)) static void clk_fd_general_approximation(struct clk_hw *hw, unsigned long rate,
      unsigned long *parent_rate,
      unsigned long *m, unsigned long *n)
{
 struct clk_fractional_divider *fd = to_clk_fd(hw);
 unsigned long scale;






 scale = fls_long(*parent_rate / rate - 1);
 if (scale > fd->nwidth)
  rate <<= scale - fd->nwidth;

 rational_best_approximation(rate, *parent_rate,
   GENMASK(fd->mwidth - 1, 0), GENMASK(fd->nwidth - 1, 0),
   m, n);
}
